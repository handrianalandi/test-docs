#!/bin/bash
set -euo pipefail

# Script to publish SDK to npm and/or PyPI registries
# **Notes**:
# - After version 1.0.0, you, the publisher, are responsible for ensuring
#   that all the models and APIs are backward compatible with previous versions (should have no or minimum breaking changes).
# 
# Usage: ./publish-sdk.sh [OPTIONS]
# Example: ./publish-sdk.sh
#          ./publish-sdk.sh --typescript
#          ./publish-sdk.sh -ts -py

# Function to detect release tag from version string
detect_release_tag() {
    local version=$1
    if [[ "$version" == *"-alpha"* ]]; then
        echo "alpha"
    else
        echo "latest"
    fi
}

# Function to show usage
show_usage() {
    echo "Usage: $0 [OPTIONS]"
    echo "After version 1.0.0, you are responsible for ensuring backward compatibility."
    echo "This means:"
    echo "  - All models must maintain the same structure (no fields removed)"
    echo "  - New fields can be added, but must be optional or nullable"
    echo "  - API endpoints must not be removed or changed in a breaking way, mark them as deprecated if needed"
    echo ""
    echo "Options:"
    echo "  -ts, --typescript   Publish TypeScript SDK (default: both)"
    echo "  -py, --python       Publish Python SDK (default: both)"
    echo "  -h, --help          Show this help message"
    echo ""
    echo "Auto-detected version formats and npm tags:"
    echo "  Stable release:   1.3.3        → npm tag: latest"
    echo "  Alpha release:    1.5.1-alpha  → npm tag: alpha"
    echo ""
    echo "Prerequisites:"
    echo "  - NPM_TOKEN environment variable must be set (for TypeScript)"
    echo "  - PYPI_TOKEN environment variable must be set (for Python)"
    echo "  - NPM_REGISTRY must be set (for TypeScript)"
    echo "  - PYPI_REGISTRY must be set (for Python)"
    echo "  - SDK must be generated and version must be updated"
    echo ""
    echo "Examples:"
    echo "  $0                       # Publish both TypeScript and Python (auto-detected version)"
    echo "  $0 -ts                   # Publish TypeScript only"
    echo "  $0 --python              # Publish Python only"
    echo "  $0 -ts -py               # Publish both explicitly"
}

# Check if help is requested
if [[ "${1:-}" == "-h" ]] || [[ "${1:-}" == "--help" ]]; then
    show_usage
    exit 0
fi

# Default values
PUBLISH_TYPESCRIPT=false
PUBLISH_PYTHON=false

# Parse command line arguments
while [[ $# -gt 0 ]]; do
    case $1 in
        -ts|--typescript)
            PUBLISH_TYPESCRIPT=true
            shift
            ;;
        -py|--python)
            PUBLISH_PYTHON=true
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

# If no options specified, publish both
if [ "$PUBLISH_TYPESCRIPT" = false ] && [ "$PUBLISH_PYTHON" = false ]; then
    echo "⚠️  No SDK type specified, defaulting to publish both TypeScript and Python"
    PUBLISH_TYPESCRIPT=true
    PUBLISH_PYTHON=true
elif [ "$PUBLISH_TYPESCRIPT" = true ] && [ "$PUBLISH_PYTHON" = true ]; then
    echo "✅ Both TypeScript and Python publishing selected"
elif [ "$PUBLISH_TYPESCRIPT" = true ]; then
    echo "✅ TypeScript publishing selected"
elif [ "$PUBLISH_PYTHON" = true ]; then
    echo "✅ Python publishing selected"
fi

# Check for required environment variables
if [ "$PUBLISH_TYPESCRIPT" = true ]; then
    if [[ -z "${NPM_TOKEN:-}" ]]; then
        echo "❌ Error: NPM_TOKEN environment variable is not set"
        echo "Please set it before running this script:"
        echo "  export NPM_TOKEN=your-npm-token"
        exit 1
    fi

    if [[ -z "${NPM_REGISTRY:-}" ]]; then
        echo "❌ Error: NPM_REGISTRY environment variable is not set"
        echo "Please set it before running this script:"
        echo "  export NPM_REGISTRY=https://private-registry-url/"
        exit 1
    fi
fi

if [ "$PUBLISH_PYTHON" = true ]; then
    if [[ -z "${PYPI_TOKEN:-}" ]]; then
        echo "❌ Error: PYPI_TOKEN environment variable is not set"
        echo "Please set it before running this script:"
        echo "  export PYPI_TOKEN=your-pypi-token"
        exit 1
    fi

    if [[ -z "${PYPI_REGISTRY:-}" ]]; then
        echo "❌ Error: PYPI_REGISTRY environment variable is not set"
        echo "Please set it before running this script:"
        echo "  export PYPI_REGISTRY=https://private-pypi-url/"
        exit 1
    fi
fi

echo "📋 Configuration:"
if [ "$PUBLISH_TYPESCRIPT" = true ]; then
    echo "  npm registry: $NPM_REGISTRY"
fi
if [ "$PUBLISH_PYTHON" = true ]; then
    echo "  PyPI registry: $PYPI_REGISTRY"
fi
echo ""

# Publish TypeScript SDK to npm
if [ "$PUBLISH_TYPESCRIPT" = true ]; then
    echo "━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━"
    echo "📦 Publishing TypeScript SDK to npm"
    echo "━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━"
    echo ""

    cd ../../node/catapa-fetch

    # Get current version
    TS_VERSION=$(node -p "require('./package.json').version")
    RELEASE_TAG=$(detect_release_tag "$TS_VERSION")
    if [[ $TS_VERSION == *"-alpha"* ]]; then
        ENV_NAME="Development (Alpha)"
    else
        ENV_NAME="Production (Stable)"
    fi
    echo "  Version: $TS_VERSION"
    echo "  Tag: $RELEASE_TAG"
    echo "  Environment: $ENV_NAME"
    echo ""

    # Configure npm authentication
    echo "//${NPM_REGISTRY#https://}:_authToken=${NPM_TOKEN}" > .npmrc
    chmod 600 .npmrc

    # Build if dist doesn't exist
    if [[ ! -d "dist" ]]; then
        echo "⚙️  Building TypeScript SDK..."
        npm install
        npm run build
    fi

    # Publish to npm with appropriate tag
    echo "🚀 Publishing to npm..."
    npm publish --tag "$RELEASE_TAG" --registry "$NPM_REGISTRY"

    # Clean up .npmrc
    rm -f .npmrc

    echo "✅ TypeScript SDK published successfully!"
    echo ""

    cd ../../scripts/sdk
else
    echo "⏭️  Skipping TypeScript SDK publishing"
    echo ""
fi

# Publish Python SDK to PyPI
if [ "$PUBLISH_PYTHON" = true ]; then
    echo "━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━"
    echo "🐍 Publishing Python SDK to PyPI"
    echo "━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━"
    echo ""

    cd ../../python/catapa-python

    # Get current version
    PYTHON_INIT="catapa_python/catapa/__init__.py"
    if [[ -f "$PYTHON_INIT" ]]; then
        PY_VERSION=$(grep -o '__version__ = "[^"]*"' "$PYTHON_INIT" | cut -d'"' -f2)
        # Set RELEASE_TAG if not already set (from TypeScript section)
        if [[ -z "${RELEASE_TAG:-}" ]]; then
            RELEASE_TAG=$(detect_release_tag "$PY_VERSION")
        fi
        echo "  Version: $PY_VERSION"
        echo ""
    else
        echo "❌ Error: Python version file not found at $PYTHON_INIT"
        exit 1
    fi

    # Build Python package
    echo "⚙️  Building Python package..."
    rm -rf dist/ build/ *.egg-info
    uv build

    # Publish to PyPI
    echo "🚀 Publishing to PyPI..."
    # UV_PUBLISH_USERNAME="__token__" \
    UV_PUBLISH_TOKEN="${PYPI_TOKEN}" \
    uv publish \
        --publish-url "$PYPI_REGISTRY" \
        dist/*

    echo "✅ Python SDK published successfully!"
    echo ""

    cd ../../scripts/sdk
else
    echo "⏭️  Skipping Python SDK publishing"
    echo ""
fi

# Summary
echo ""
echo "━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━"
echo "🎉 SDK Publishing Complete!"
echo "━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━"
echo ""
echo "Published versions:"

if [ "$PUBLISH_TYPESCRIPT" = true ]; then
    echo "  TypeScript: $TS_VERSION (tag: $RELEASE_TAG)"
fi

if [ "$PUBLISH_PYTHON" = true ]; then
    echo "  Python:     $PY_VERSION (tag: $RELEASE_TAG)"
fi

echo ""
echo "Installation instructions:"
echo ""

if [ "$PUBLISH_TYPESCRIPT" = true ]; then
    echo "TypeScript/Node.js:"
    if [[ "$RELEASE_TAG" == "latest" ]]; then
        echo "  npm install @catapa/node"
    else
        echo "  npm install @catapa/node@$RELEASE_TAG"
    fi
    echo ""
fi

if [ "$PUBLISH_PYTHON" = true ]; then
    echo "Python:"
    if [[ "$RELEASE_TAG" == "latest" ]]; then
        echo "  pip install catapa-python"
    else
        echo "  pip install catapa-python==$PY_VERSION"
    fi
    echo ""
fi
