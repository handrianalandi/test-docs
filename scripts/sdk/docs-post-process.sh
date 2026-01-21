#!/bin/bash

# Documentation post-generation steps
# This function handles post-processing tasks for documentation after SDK generation
# Parameters:
#   $1 - TARGET_FOLDER_PATH: Path to the generated folder (e.g., generated/)

# Path to organize-docs script
SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
ORGANIZE_DOCS_SCRIPT="$SCRIPT_DIR/organize-docs.py"

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
    
    # Run organize-docs Python script
    if [[ -f "$ORGANIZE_DOCS_SCRIPT" ]]; then
        python3 "$ORGANIZE_DOCS_SCRIPT" "$ABS_TARGET_FOLDER"
    else
        echo "⚠️  Warning: organize-docs.py not found at $ORGANIZE_DOCS_SCRIPT"
    fi
    
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

