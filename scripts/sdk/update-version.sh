#!/bin/bash
set -euo pipefail

# Script to update SDK versions across TypeScript and/or Python packages
# Usage: ./update-version.sh <version> [OPTIONS]
# Example: ./update-version.sh 1.5.1-alpha.1
#          ./update-version.sh 1.4.4-alpha.2 --typescript
#          ./update-version.sh 1.3.3 -ts -py

# Function to show usage
show_usage() {
    echo "Usage: $0 <version> [OPTIONS]"
    echo ""
    echo "Arguments:"
    echo "  version   Full semantic version with optional pre-release suffix"
    echo ""
    echo "Options:"
    echo "  -ts, --typescript   Update TypeScript version (default: both)"
    echo "  -py, --python       Update Python version (default: both)"
    echo "  -h, --help          Show this help message"
    echo ""
    echo "Version formats:"
    echo "  Stable release:   1.3.3"
    echo "  Alpha release:    1.5.1-alpha.1"
    echo ""
    echo "Examples:"
    echo "  $0 1.5.1-alpha.1          # Update both TypeScript and Python"
    echo "  $0 1.4.4 -ts       # Update TypeScript only"
    echo "  $0 1.3.3 -py         # Update Python only"
    echo "  $0 1.2.0 -ts -py          # Update both explicitly"
}

# Check if help is requested
if [[ "${1:-}" == "-h" ]] || [[ "${1:-}" == "--help" ]]; then
    show_usage
    exit 0
fi

# Validate arguments
if [[ $# -lt 1 ]]; then
    echo "❌ Error: Missing required version argument"
    echo ""
    show_usage
    exit 1
fi

VERSION=$1
shift

# Default values
UPDATE_TYPESCRIPT=false
UPDATE_PYTHON=false

# Parse command line arguments
while [[ $# -gt 0 ]]; do
    case $1 in
        -ts|--typescript)
            UPDATE_TYPESCRIPT=true
            shift
            ;;
        -py|--python)
            UPDATE_PYTHON=true
            shift
            ;;
        -h|--help)
            show_usage
            exit 0
            ;;
        *)
            echo "❌ Unknown option: $1"
            show_usage
            exit 1
            ;;
    esac
done

# If no options specified, update both
if [ "$UPDATE_TYPESCRIPT" = false ] && [ "$UPDATE_PYTHON" = false ]; then
    echo "⚠️  No SDK type specified, defaulting to update both TypeScript and Python"
    UPDATE_TYPESCRIPT=true
    UPDATE_PYTHON=true
elif [ "$UPDATE_TYPESCRIPT" = true ] && [ "$UPDATE_PYTHON" = true ]; then
    echo "✅ Both TypeScript and Python version update selected"
elif [ "$UPDATE_TYPESCRIPT" = true ]; then
    echo "✅ TypeScript version update selected"
elif [ "$UPDATE_PYTHON" = true ]; then
    echo "✅ Python version update selected"
fi

# Validate version format (semantic versioning with optional pre-release)
if ! [[ $VERSION =~ ^[0-9]+\.[0-9]+\.[0-9]+(-[a-zA-Z0-9.]+)?$ ]]; then
    echo "❌ Error: Invalid version format '$VERSION'"
    echo "Expected: MAJOR.MINOR.PATCH[-prerelease] (e.g., 1.2.3 or 1.2.3-alpha.1)"
    exit 1
fi

# Determine environment type based on version suffix
if [[ $VERSION == *"-alpha"* ]]; then
    ENV_NAME="Development (Alpha)"
else
    ENV_NAME="Production (Stable)"
fi

echo ""
echo "━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━"
echo "🛠️  Updating SDK Version for $ENV_NAME"
echo "━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━"
echo "  Version:       $VERSION"
echo "━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━"
echo ""

# Update TypeScript package.json
if [ "$UPDATE_TYPESCRIPT" = true ]; then
    echo "📦 Updating TypeScript package version..."
    cd "../../node/catapa-fetch"
    npm version "$VERSION" --no-git-tag-version --allow-same-version
    cd ../../scripts/sdk
else
    echo "⏭️  Skipping TypeScript version update"
fi

# Update Python version using uv version
if [ "$UPDATE_PYTHON" = true ]; then
    echo "🐍 Updating Python package version..."
    cd "../../python/catapa-python"
    
    # Use uv version to update pyproject.toml (automatically updates version field)
    echo "📄 Updating pyproject.toml version using uv version..."
    uv version "$VERSION" --no-sync
    
    # Also update __init__.py for runtime access to version
    PYTHON_INIT="catapa_python/catapa/__init__.py"
    if [[ -f "$PYTHON_INIT" ]]; then
        echo "📄 Updating __init__.py version..."
        # Use sed to replace the version line
        if [[ "$OSTYPE" == "darwin"* ]]; then
            # macOS
            sed -i '' "s/__version__ = .*/__version__ = \"$VERSION\"/" "$PYTHON_INIT"
        else
            # Linux
            sed -i "s/__version__ = .*/__version__ = \"$VERSION\"/" "$PYTHON_INIT"
        fi
    
    echo "✅ Python version updated"
    else
        echo "⚠️  Warning: $PYTHON_INIT not found, creating it..."
        mkdir -p "$(dirname "$PYTHON_INIT")"
        cat > "$PYTHON_INIT" << EOF
"""
"""CATAPA Python Client.

Main entry point for the CATAPA Python SDK with authentication wrapper.

This package provides:
- Catapa: Main wrapper class with automatic OAuth2 authentication.
- CatapaAuth & CatapaConfig: Authentication utilities.
- All generated API classes (EmployeeApi, OrganizationApi, etc.).
- All generated model classes (EmployeeResponse, CompanyDetailResponse, etc.).
- Core classes (Configuration, ApiClient).
- Exception classes (ApiException, etc.).

Authors:
    Handrian Alandi (handrian.alandi@gdplabs.id)

References:
    NONE
"""

# Authentication utilities
from catapa.auth.catapa_auth import CatapaAuth, CatapaConfig

# Auto-refresh API client
from catapa.auto_refresh_api_client import AutoRefreshApiClient

# Main wrapper class
from catapa.wrapper import Catapa

# Import all generated exports
# Note: openapi_client is now installed as a proper package alongside catapa
try:
    from openapi_client import *  # noqa: F401, F403
    from openapi_client import __all__ as _generated_all
except ImportError:
    # Fallback if generated code doesn't exist yet
    _generated_all = []

__version__ = "$VERSION"
__author__ = "Catapa Team"
__email__ = "dev@catapa.com"

# Explicitly define __all__ for better IDE support
# This combines wrapper-specific exports with all generated exports
__all__ = [
    # Main wrapper classes
    "Catapa",
    "CatapaAuth",
    "CatapaConfig",
    "AutoRefreshApiClient",
] + list(_generated_all)
EOF
fi
    cd ../../scripts/sdk

else
    echo "⏭️  Skipping Python version update"
fi

echo ""
echo "━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━"
echo "✅ Version Update Complete!"
echo "━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━"
echo ""
echo "📦 Updated versions:"
echo "  Environment:   $ENV_NAME"

if [ "$UPDATE_TYPESCRIPT" = true ]; then
    echo "  TypeScript:    $(node -p "require('../../node/catapa-fetch/package.json').version")"
fi

if [ "$UPDATE_PYTHON" = true ]; then
    PYTHON_INIT="../../python/catapa-python/catapa_python/catapa/__init__.py"
    echo "  Python:        $(grep -o '__version__ = "[^"]*"' "$PYTHON_INIT" | cut -d'"' -f2)"
fi

echo ""
echo "Next steps:"
echo "  1. Review the changes 🥸"

# Build the publish command with the same options
PUBLISH_CMD="./publish-sdk.sh"
if [ "$UPDATE_TYPESCRIPT" = true ] && [ "$UPDATE_PYTHON" = false ]; then
    PUBLISH_CMD="$PUBLISH_CMD --typescript"
elif [ "$UPDATE_PYTHON" = true ] && [ "$UPDATE_TYPESCRIPT" = false ]; then
    PUBLISH_CMD="$PUBLISH_CMD --python"
fi

echo "  2. Run $PUBLISH_CMD to publish the SDKs 💨"
echo "  3. Done ✅"
echo ""
