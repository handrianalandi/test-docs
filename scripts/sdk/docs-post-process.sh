#!/bin/bash

# Documentation post-generation steps
# This function handles post-processing tasks for documentation after SDK generation
# Parameters:
#   $1 - TARGET_FOLDER_PATH: Path to the generated folder (e.g., generated/)

# Source the organize-docs function
SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
source "$SCRIPT_DIR/organize-docs.sh"

docs_post_process() {
    local TARGET_FOLDER_PATH="$1"
    local SDK_LANGUAGE="${2:-SDK}"  # Optional language name, defaults to "SDK"
    
    # Convert target folder to absolute path if needed
    local ABS_TARGET_FOLDER
    if [[ "$TARGET_FOLDER_PATH" == /* ]]; then
        # Already absolute
        ABS_TARGET_FOLDER="$TARGET_FOLDER_PATH"
    else
        # Relative path - convert to absolute
        local SCRIPT_DIR
        SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
        ABS_TARGET_FOLDER="$(cd "$SCRIPT_DIR" && cd "$(dirname "$TARGET_FOLDER_PATH")" && pwd)/$(basename "$TARGET_FOLDER_PATH")"
    fi
    
    organize_docs "$ABS_TARGET_FOLDER"
    
    # Create README.md in docs folder for API reference
    local DOCS_DIR="$TARGET_FOLDER_PATH/docs"
    echo "📝 Creating README.md in docs folder..."
    mkdir -p "$DOCS_DIR"
    {
        echo "# $SDK_LANGUAGE API Reference"
        echo ""
        echo "This directory contains the generated documentation for the $SDK_LANGUAGE."
        echo ""
        echo "- \`api/\` - API class documentation"
        echo "- \`models/\` - Model and other class documentation"
    } > "$DOCS_DIR/README.md"
    echo "✅ README.md created at $DOCS_DIR/README.md"
}

