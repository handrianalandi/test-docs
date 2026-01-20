#!/bin/bash
set -euo pipefail  # Exit on any error, undefined variables, and pipe failures

# Script: publish.ci.sh
# Purpose: CI script for publishing Catapa SDK
# This script extracts version from GitHub refs and updates SDK versions before publishing
#
# Expected tag format: catapa_sdk-v<semver version>
# Examples: catapa_sdk-v1.0.0, catapa_sdk-v1.2.3-alpha.1

echo "━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━"
echo "🚀 Starting Catapa SDK CI Publish"
echo "━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━"

# Check if we're in the correct directory
SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
cd "$SCRIPT_DIR"
# Navigate to scripts/sdk to access update-version.sh and publish-sdk.sh
cd ../../scripts/sdk

# Get GitHub ref from environment variable
GITHUB_REF="${GITHUB_REF:-}"
GITHUB_SHA="${GITHUB_SHA:-}"

echo "📋 Git Information:"
echo "   GITHUB_REF: $GITHUB_REF"
echo "   GITHUB_SHA: $GITHUB_SHA"

# Extract version from tag
# Expected format: refs/tags/catapa_sdk-v<version>
VERSION=""

if [[ -n "$GITHUB_REF" ]]; then
    # Check if it's a tag reference
    if [[ "$GITHUB_REF" == refs/tags/* ]]; then
        TAG_NAME="${GITHUB_REF#refs/tags/}"
        echo "   Tag name: $TAG_NAME"
        
        # Extract version from tag: catapa_sdk-v<version>
        if [[ "$TAG_NAME" =~ ^catapa_sdk-v(.+)$ ]]; then
            VERSION="${BASH_REMATCH[1]}"
            echo "   Extracted version: $VERSION"
        else
            echo "❌ Error: Tag format is invalid"
            echo "   Expected format: catapa_sdk-v<version>"
            echo "   Got: $TAG_NAME"
            echo "   Example: catapa_sdk-v1.0.0 or catapa_sdk-v1.2.3-alpha.1"
            exit 1
        fi
    else
        echo "⚠️  Warning: GITHUB_REF is not a tag reference"
        echo "   This script should only be run on tag pushes"
        exit 1
    fi
else
    echo "❌ Error: GITHUB_REF environment variable is not set"
    echo "   This script is designed to run in GitHub Actions"
    exit 1
fi

# Validate extracted version
if [[ -z "$VERSION" ]]; then
    echo "❌ Error: Could not extract version from GITHUB_REF"
    exit 1
fi

# Validate semantic version format
if ! [[ $VERSION =~ ^[0-9]+\.[0-9]+\.[0-9]+(-[a-zA-Z0-9.]+)?$ ]]; then
    echo "❌ Error: Invalid semantic version format: $VERSION"
    echo "   Expected format: MAJOR.MINOR.PATCH[-prerelease] (e.g., 1.2.3 or 1.2.3-alpha.1)"
    exit 1
fi

echo ""
echo "━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━"
echo "🔄 Step 1: Updating Python SDK Version"
echo "━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━"
echo "   Version to update: $VERSION"
echo "   Language: Python"
echo ""

echo "📝 Command: ./update-version.sh \"$VERSION\" --python"

# Execute update-version.sh for Python only
if ./update-version.sh "$VERSION" --python; then
    echo "✅ Python SDK version updated successfully"
else
    echo "❌ Error: Failed to update Python SDK version"
    exit 1
fi

echo ""
echo "━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━"
echo "📤 Step 2: Publishing Python SDK"
echo "━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━"
echo ""

echo "📝 Command: ./publish-sdk.sh --python"

# Execute publish-sdk.sh for Python only
if ./publish-sdk.sh --python; then
    echo ""
    echo "━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━"
    echo "✅ SDK CI Publish Completed Successfully!"
    echo "━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━"
    
    echo ""
    echo "📋 Publish Summary:"
    echo "   • Tag: $TAG_NAME"
    echo "   • Version: $VERSION"
    echo "   • SDK Published:"
    echo "     - Python SDK ✓"
    
else
    echo ""
    echo "━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━"
    echo "❌ SDK CI Publish Failed!"
    echo "━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━"
    echo "Check the error messages above for details."
    exit 1
fi

echo ""
echo "━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━"
echo "🏁 Catapa SDK CI Publish Complete"
echo "━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━"
