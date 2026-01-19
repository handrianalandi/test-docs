#!/bin/bash
set -euo pipefail  # Exit on any error, undefined variables, and pipe failures

# Script to regenerate Catapa TypeScript / Python client
# This script removes old generated code, processes the OpenAPI spec, and regenerates the client

# Function to show usage
show_usage() {
    echo "Usage: $0 [OPTIONS]"
    echo ""
    echo "Options:"
    echo "  -r, --regenerate    Force regenerate openapi-dist.yaml from source"
    echo "  -u, --url URL       Download openapi-dist.yaml from URL"
    echo "  -ts, --typescript   Generate TypeScript client (default)"
    echo "  -py, --python       Generate Python client"
    echo "  -h, --help          Show this help message"
    echo ""
    echo "Examples:"
    echo "  $0                  # Generate SDK using existing openapi-dist.yaml"
    echo "  $0 --regenerate     # Regenerate openapi-dist.yaml and then generate SDK"
    echo "  $0 -r               # Same as --regenerate"
    echo "  $0 --url [URL]      # Download spec from URL"
    echo "  $0 -u [URL]         # Same as --url"
    echo "  $0 --python         # Generate Python client"
    echo "  $0 -py              # Same as --python"
    echo "  $0 --typescript     # Generate TypeScript client"
    echo "  $0 -ts              # Same as --typescript"
    echo "  $0 -r -ts -py       # Regenerate openapi-dist.yaml and generate both TypeScript and Python clients"
    echo "  $0 -u [URL] -ts -py # Download from URL and generate both clients"
}

# Default values
FORCE_REGENERATE_DIST=false
GENERATE_TYPESCRIPT=false
GENERATE_PYTHON=false
SPEC_URL=""
FOLDER_TYPESCRIPT_PATH="../../node/catapa-fetch/src/generated"
FOLDER_PYTHON_PATH="../../python/catapa-python/catapa_python/generated"
SPEC_FILE="openapi-dist.yaml"
SOURCE_SPEC="../openapi.yaml"

# Parse command line arguments
while [[ $# -gt 0 ]]; do
    case $1 in
        -r|--regenerate)
            FORCE_REGENERATE_DIST=true
            shift
            ;;
        -u|--url)
            if [[ -z "$2" ]] || [[ "$2" == -* ]]; then
                echo "❌ Error: --url requires a URL argument"
                show_usage
                exit 1
            fi
            SPEC_URL="$2"
            shift 2
            ;;
        -h|--help)
            show_usage
            exit 0
            ;;
        -ts|--typescript)
             GENERATE_TYPESCRIPT=true
            shift
            ;;
        -py|--python)
            GENERATE_PYTHON=true
            shift
            ;;
        *)
            echo "❌ Unknown option: $1"
            show_usage
            exit 1
            ;;
    esac
done

if [ "$GENERATE_TYPESCRIPT" = true ] && [ "$GENERATE_PYTHON" = true ]; then
    echo "✅ Both TypeScript and Python generation selected"
elif [ "$GENERATE_TYPESCRIPT" = true ]; then
    echo "✅ TypeScript generation selected"
elif [ "$GENERATE_PYTHON" = true ]; then
    echo "✅ Python generation selected"
else
    echo "⚠️  No client type specified or unsupported client type, defaulting to 'typescript'"
    GENERATE_TYPESCRIPT=true
fi

# Source the common function
source "$(dirname "$0")/common-function.sh"

echo "🔄 Starting Catapa client regeneration..."

# Download spec from URL if provided
if [[ -n "$SPEC_URL" ]]; then
    echo "📥 Downloading openapi-dist.yaml from URL: $SPEC_URL"
    
    # Validate URL format
    if [[ ! "$SPEC_URL" =~ ^https?://[^[:space:]]+$ ]]; then
        echo "❌ Error: Invalid URL format. URL must start with http:// or https:// and contain no spaces."
        echo "   Provided: $SPEC_URL"
        exit 1
    fi
    
    # Check if curl is available
    if ! command -v curl &> /dev/null; then
        echo "❌ Error: curl is not installed. Please install curl to download from URL."
        exit 1
    fi
    
    # Download to a temporary file first (safer)
    TEMP_FILE=$(mktemp)
    trap "rm -f '$TEMP_FILE'" EXIT  # Clean up temp file on exit
    
    # Download with safety flags:
    # -f: fail on HTTP errors
    # --max-filesize 10M: reject files larger than 10MB (10485760 bytes)
    # --max-time 30: timeout after 30 seconds
    if curl -Lsf --proto '=http,https' --max-redirs 3 --max-filesize 10485760 --max-time 30 -o "$TEMP_FILE" "$SPEC_URL"; then

        # Validate file is not empty
        if [[ ! -s "$TEMP_FILE" ]]; then
            echo "❌ Error: Downloaded file is empty"
            exit 1
        fi
        
        # Basic validation: check if file contains OpenAPI/Swagger marker
        if ! grep -q -E '^(openapi|swagger):' "$TEMP_FILE"; then
            echo "❌ Error: Downloaded file does not appear to be a valid OpenAPI specification"
            exit 1
        fi
        
        # Stricter YAML validation (if yq is available)
        if command -v yq &> /dev/null; then
            if ! yq eval '.' "$TEMP_FILE" > /dev/null 2>&1; then
                echo "❌ Error: Downloaded file is not valid YAML"
                exit 1
            fi
        fi
        
        # Move temp file to final location
        mv "$TEMP_FILE" "$SPEC_FILE"
        echo "✅ Successfully downloaded and validated openapi-dist.yaml"
    else
        echo "❌ Error: Failed to download from URL: $SPEC_URL"
        exit 1
    fi
    
    # Set flag to skip regeneration since we just downloaded the file
    FORCE_REGENERATE_DIST=false
fi

# Generate TypeScript client if requested
if [ "$GENERATE_TYPESCRIPT" = true ]; then
    generate_client_sdk \
        "TypeScript" \
        "typescript-fetch" \
        "$FOLDER_TYPESCRIPT_PATH" \
        "$SPEC_FILE" \
        "$SOURCE_SPEC" \
        "$FORCE_REGENERATE_DIST"
    
    # After first generation, set FORCE_REGENERATE_DIST to false to reuse the dist file
    FORCE_REGENERATE_DIST=false
fi

# Generate Python client if requested
if [ "$GENERATE_PYTHON" = true ]; then
    generate_client_sdk \
        "Python" \
        "python" \
        "$FOLDER_PYTHON_PATH" \
        "$SPEC_FILE" \
        "$SOURCE_SPEC" \
        "$FORCE_REGENERATE_DIST"
fi

echo ""
echo "━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━"
echo "🎊 All requested client SDKs have been generated!"
echo "━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━"
