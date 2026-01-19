# Multi-Environment SDK Publishing Guide

## Overview

This guide explains how to manage SDK versions and publishing across three environments:

- **DEV** (Alpha): Development/testing environment
- **PROD** (Stable): Production environment

## Version Strategy

### Semantic Versioning with Environment Suffixes

Each environment maintains its own version line with the full version specified including suffixes:

| Environment | Suffix     | Example         | npm Tag  | Use Case                          |
| ----------- | ---------- | --------------- | -------- | --------------------------------- |
| **DEV**     | `-alpha.X` | `1.5.1-alpha.1` | `alpha`  | Development, testing new features |
| **PROD**    | (none)     | `1.3.3`         | `latest` | Production, stable releases       |

### Version Progression Example

```
DEV:  1.5.0-alpha.1 → 1.5.1-alpha.1 → 1.5.2-alpha.1 → ...
PROD: 1.3.2         → 1.3.3         → 1.3.4         → ...
```

When a version is promoted:

```
DEV (1.5.5-alpha.1) → PROD (1.5.5)
```

## Workflow

### Complete Flow

```
┌────────────────────────────────────────────────────────────┐
│ 1. OpenAPI Spec Changes                                    │
│    └─ Update openapi.yaml, components/, paths/             │
└────────────────┬───────────────────────────────────────────┘
                 │
                 ▼
┌────────────────────────────────────────────────────────────┐
│ 2. Run OpenAPI Build (as usual)                            │
│    └─ Validate and bundle spec                             │
└────────────────┬───────────────────────────────────────────┘
                 │
                 ▼
┌────────────────────────────────────────────────────────────┐
│ 3. Cherry-pick to Dev Branch                               │
│    └─ git cherry-pick <commit> to dev branch               │
└────────────────┬───────────────────────────────────────────┘
                 │
                 ▼
┌────────────────────────────────────────────────────────────┐
│ 4. Generate SDK (DEV)                                      │
│    cd scripts/sdk                                          │
│    ./regenerate-client.sh -r -ts -py                       │
└────────────────┬───────────────────────────────────────────┘
                 │
                 ▼
┌────────────────────────────────────────────────────────────┐
│ 5. Update Version (DEV)                                    │
│    ./update-version.sh 1.5.1-alpha.1                       │
│    → Sets version: 1.5.1-alpha.1                           │
└────────────────┬───────────────────────────────────────────┘
                 │
                 ▼
┌────────────────────────────────────────────────────────────┐
│ 6. Publish SDK (DEV)                                       │
│    export NPM_TOKEN=xxx                                    │
│    export PYPI_TOKEN=xxx                                   │
│    ./publish-sdk.sh                                        │
└────────────────────────────────────────────────────────────┘
```

### Same Process for PROD

Just replace the version string:

- DEV: `1.5.1-alpha.1`
- PROD: `1.3.3`

## Scripts Usage

### 1. Regenerate SDK

```bash
cd scripts/sdk

# Generate both TypeScript and Python SDKs (default)
./regenerate-client.sh -r -ts -py

# Generate TypeScript only
./regenerate-client.sh -r -ts

# Generate Python only
./regenerate-client.sh -r -py
```

**What it does:**

- Validates OpenAPI spec
- Generates TypeScript SDK (if `-ts` specified)
- Generates Python SDK (if `-py` specified)
- Processes tenant parameters

### 2. Update Version

```bash
# Update both TypeScript and Python (default)
./update-version.sh 1.5.1-alpha.1    # DEV
./update-version.sh 1.3.3            # PROD

# Update TypeScript only
./update-version.sh 1.5.1-alpha.1 -ts

# Update Python only
./update-version.sh 1.5.1-alpha.1 -py
```

**What it does:**

- Updates `node/catapa-fetch/package.json` version (if TypeScript selected)
- Updates `python/catapa-python/catapa_python/catapa/__init__.py` version (if Python selected)
- Updates `python/catapa-python/pyproject.toml` version (if Python selected)
- Automatically detects environment type from version suffix
- Default: updates both SDKs if no option specified

**Options:**

- `-ts, --typescript` - Update TypeScript SDK only
- `-py, --python` - Update Python SDK only
- (no option) - Update both SDKs (default)

### 3. Publish SDK

**As a note, after version 1.0.0, you are responsible for ensuring backward compatibility.
This means:**

- All models must maintain the same structure (no fields removed)
- New fields can be added, but must be optional or nullable
- API endpoints must not be removed or changed in a breaking way, mark them as deprecated if needed

```bash
# Set environment variables (only needed for SDKs you're publishing)
export NPM_TOKEN="your-npm-token"        # Required for TypeScript
export PYPI_TOKEN="your-pypi-token"      # Required for Python

# Optional: Set custom registries
export NPM_REGISTRY="https://your-npm-registry.com/"
export PYPI_REGISTRY="https://your-pypi-server.com/legacy/"

# Publish both TypeScript and Python (default)
./publish-sdk.sh                 # DEV (alpha tag) / PROD (latest tag)

# Publish TypeScript only
./publish-sdk.sh -ts

# Publish Python only
./publish-sdk.sh -py
```

**What it does:**

- Validates version format
- Determines npm tag automatically from version suffix:
  - Versions with `-alpha` → `alpha` tag
  - Versions without suffix → `latest` tag
- Builds TypeScript SDK (if selected) and publishes to npm
- Builds Python package (if selected) and publishes to PyPI
- Validates environment variables only for selected SDKs

**Options:**

- `-ts, --typescript` - Publish TypeScript SDK only (requires NPM_TOKEN)
- `-py, --python` - Publish Python SDK only (requires PYPI_TOKEN)
- (no option) - Publish both SDKs (default, requires both tokens)

### Automatic Trigger

Create Cloud Build triggers in GCP Console:

1. **DEV Trigger**

   - Name: `publish-sdk-dev`
   - Event: Push to branch `dev`
   - Config: `cloudbuild-sdk-dev.yaml`
   - Substitution: `_VERSION`

2. **PROD Trigger**
   - Name: `publish-sdk-prod`
   - Event: Manual only (requires approval)
   - Config: `cloudbuild-sdk-prod.yaml`
   - Substitution: `_VERSION`

## Version Management Best Practices

### 1. Version Increment Rules

**DEV (Alpha):**

- Increment PATCH for any schema change only: `1.5.1-alpha.1` → `1.5.2-alpha.1`
- Increment MINOR for new API endpoint: `1.5.9-alpha.1` → `1.6.0-alpha.1`
- Increment alpha version for quick fixes: `1.5.1-alpha.1` → `1.5.1-alpha.2`
- Reset alpha version when promoting to PROD

**PROD (Stable):**

- Follow strict SemVer:
  - PATCH: schema change only
  - MINOR: new API endpoint
  - MAJOR: Breaking changes <!-- Will be turned off for now -->

### 2. Promotion Flow (TBD)

```
CURRENT PROD: 1.5.0

DEV: 1.5.1-alpha.1 → 1.5.1-alpha.2 → 1.5.1-alpha.3 (ready)
                                            ↓
PROD: 1.5.1 (release)
```

### 3. Hotfix Flow (TBD)

```
PROD: 1.3.3 (has bug)
        ↓
Create hotfix: 1.3.4
        ↓
Release to PROD: 1.3.4
        ↓
Merge back to DEV: Continue with 1.3.4-alpha.1
```

## Troubleshooting

### Issue: Wrong version suffix

**Problem:** Published `1.5.1` instead of `1.5.1-alpha.1` for dev

**Solution:**

```bash
# Unpublish if possible (within 72 hours for npm)
npm unpublish @catapa/node@1.5.1

# Re-publish with correct version
./update-version.sh 1.5.1-alpha.1
./publish-sdk.sh
```

### Issue: Version already exists

**Problem:** "Version 1.5.1-alpha.1 already exists"

**Solution:**

```bash
# Increment alpha version or PATCH version
./update-version.sh 1.5.1-alpha.2
./publish-sdk.sh

# Or increment PATCH
./update-version.sh 1.5.2-alpha.1
./publish-sdk.sh
```

### Issue: npm tag is wrong

**Problem:** Published to wrong npm tag

**Solution:**

```bash
# Add correct tag
npm dist-tag add @catapa/node@1.5.1-alpha.1 alpha

# Remove incorrect tag (if not latest)
npm dist-tag rm @catapa/node@1.5.1-alpha.1 incorrect-tag
```

### Issue: Can't find published package

**Problem:** Package not showing in registry

**Solution:**

```bash
# Check npm
npm view @catapa/node versions
npm view @catapa/node dist-tags

# Check PyPI
pip index versions catapa-python

# Verify authentication
npm whoami --registry https://your-registry.com
```

### Issue: Don't have NPM_TOKEN but need to publish Python

**Problem:** "NPM_TOKEN environment variable is not set" when you only want to publish Python SDK

**Solution:**

```bash
# Use the -py flag to skip TypeScript publishing
./publish-sdk.sh -py
# Only requires PYPI_TOKEN
```

### Issue: Don't have PYPI_TOKEN but need to publish TypeScript

**Problem:** "PYPI_TOKEN environment variable is not set" when you only want to publish TypeScript SDK

**Solution:**

```bash
# Use the -ts flag to skip Python publishing
./publish-sdk.sh -ts
# Only requires NPM_TOKEN
```

### Issue: Emergency Python fix without regenerating TypeScript

**Problem:** Need to quickly fix and publish Python SDK without touching TypeScript

**Solution:**

```bash
# Only regenerate, update, and publish Python
./regenerate-client.sh -r -py
./update-version.sh 1.5.2-alpha.1 -py
./publish-sdk.sh -py
```

## Summary

### Key Points

✅ **Two environments**: DEV (alpha), PROD (stable)  
✅ **Full version strings**: Specify complete version including suffix (e.g., `1.5.1-alpha.1`)  
✅ **Automatic tag detection**: npm tag determined from version suffix  
✅ **No branch arguments**: Version string contains all necessary information  
✅ **Independent versions**: Each environment has its own version line  
✅ **Flexible versioning**: Increment alpha numbers for quick fixes  
✅ **Selective SDK operations**: Use `-ts` or `-py` flags to work with specific SDKs

### Quick Reference

```bash
# Generate SDK
./regenerate-client.sh -r -ts -py       # Both SDKs (default)
./regenerate-client.sh -r -ts           # TypeScript only
./regenerate-client.sh -r -py           # Python only

# Update version
./update-version.sh 1.5.1-alpha.1       # Both SDKs (default) - DEV
./update-version.sh 1.3.3               # Both SDKs (default) - PROD
./update-version.sh 1.5.1-alpha.1 -ts   # TypeScript only
./update-version.sh 1.5.1-alpha.1 -py   # Python only

# Publish SDK
./publish-sdk.sh                        # Both SDKs → npm tag: alpha / latest
./publish-sdk.sh -ts                    # TypeScript only (needs NPM_TOKEN)
./publish-sdk.sh -py                    # Python only (needs PYPI_TOKEN)
```

### Common Workflows

**Full Release (Both SDKs)**

```bash
./regenerate-client.sh -r -ts -py
./update-version.sh 1.5.0
./publish-sdk.sh
```

**Python-Only Emergency Fix**

```bash
./regenerate-client.sh -r -py
./update-version.sh 1.5.1 -py
./publish-sdk.sh -py
```

**TypeScript-Only Update**

```bash
./regenerate-client.sh -r -ts
./update-version.sh 1.5.1 -ts
./publish-sdk.sh -ts
```
