#!/bin/bash
set -euo pipefail  # Exit on any error, undefined variables, and pipe failures

# Script: update-docs.ci.sh
# Purpose: Regenerate Python SDK (for docs) and push generated docs to docs/catapa-python for GitBook.
# Run from python/catapa-python. Requires: uv, node, npx. Expects GITHUB_TOKEN, GITHUB_REPOSITORY from workflow.

echo "━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━"
echo "📚 Update SDK documentation (GitBook)"
echo "━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━"

# Check if we're in the correct directory
SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
cd "$SCRIPT_DIR"
REPO_ROOT="$(cd ../.. && pwd)"
GENERATED_PATH_REL="python/catapa-python/catapa_python/generated"

# Get GitHub env (for commit message and push)
GITHUB_SHA="${GITHUB_SHA:-}"
GITHUB_REPOSITORY="${GITHUB_REPOSITORY:-}"

echo ""
echo "━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━"
echo "🔄 Step 1: Regenerating Python SDK (for docs)"
echo "━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━"
echo ""

echo "📝 Command: (cd scripts/sdk/generate && uv sync && uv run main.py py)"
cd "$REPO_ROOT/scripts/sdk/generate"
if uv sync && uv run main.py py; then
    echo "✅ SDK regeneration completed successfully"
else
    echo "❌ Error: Failed to regenerate SDK"
    exit 1
fi
cd "$REPO_ROOT"

if [ ! -d "$REPO_ROOT/$GENERATED_PATH_REL" ] || [ -z "$(ls -A "$REPO_ROOT/$GENERATED_PATH_REL" 2>/dev/null)" ]; then
    echo "❌ Error: Generated folder missing or empty after regeneration"
    exit 1
fi

echo ""
echo "━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━"
echo "📤 Step 2: Pushing to docs/catapa-python branch"
echo "━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━"
echo ""

TEMP_DOCS="/tmp/docs_generated_$$"
cp -r "$REPO_ROOT/$GENERATED_PATH_REL" "$TEMP_DOCS"
git config user.name "github-actions[bot]"
git config user.email "github-actions[bot]@users.noreply.github.com"
COMMIT_MSG="docs: update Python SDK generated docs (from main @ ${GITHUB_SHA::7})"

if git ls-remote --heads origin docs/catapa-python | grep -q "docs/catapa-python"; then
    git fetch origin docs/catapa-python
    git checkout docs/catapa-python
    git pull origin docs/catapa-python
else
    git checkout --orphan docs/catapa-python
    git rm -rf . 2>/dev/null || true
fi

rm -rf "$REPO_ROOT/$GENERATED_PATH_REL"
mkdir -p "$(dirname "$REPO_ROOT/$GENERATED_PATH_REL")"
cp -r "$TEMP_DOCS" "$REPO_ROOT/$GENERATED_PATH_REL"
rm -rf "$TEMP_DOCS"
git add -A "$GENERATED_PATH_REL"
if git diff --staged --quiet; then
    echo "No doc changes to commit"
    echo ""
    echo "━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━"
    echo "🏁 Update SDK documentation Complete"
    echo "━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━"
    exit 0
fi
git commit -m "$COMMIT_MSG"
git push "https://x-access-token:${GITHUB_TOKEN}@github.com/${GITHUB_REPOSITORY}.git" docs/catapa-python

echo ""
echo "━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━"
echo "✅ Update SDK documentation Completed Successfully!"
echo "━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━"
echo ""
echo "📋 Summary:"
echo "   • Docs pushed to branch: docs/catapa-python ✓"
echo ""
echo "━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━"
echo "🏁 Update SDK documentation Complete"
echo "━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━"
