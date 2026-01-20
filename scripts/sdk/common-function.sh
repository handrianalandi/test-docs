#!/bin/bash

# Common function to generate client SDK
# This function handles the complete SDK generation workflow for a specific language

# Function to generate client SDK for a specific language
# Parameters:
#   $1 - TARGET_LANGUAGE: Display name (e.g., "TypeScript", "Python")
#   $2 - TARGET_LANGUAGE_OPTION: OpenAPI generator option (e.g., "typescript-fetch", "python")
#   $3 - TARGET_FOLDER_PATH: Output folder path (can be relative or absolute, e.g., "catapa-fetch/src/generated" or "/path/to/output")
#   $4 - SPEC_FILE: OpenAPI specification file path
#   $5 - SOURCE_SPEC: Source OpenAPI specification file path
#   $6 - FORCE_REGENERATE_DIST: Boolean flag to force regenerate openapi-dist.yaml
generate_client_sdk() {
    local TARGET_LANGUAGE="$1"
    local TARGET_LANGUAGE_OPTION="$2"
    local TARGET_FOLDER_PATH="$3"
    local SPEC_FILE="$4"
    local SOURCE_SPEC="$5"
    local FORCE_REGENERATE_DIST="$6"

    # Validate required parameters
    if [[ -z "$TARGET_LANGUAGE" ]] || [[ -z "$TARGET_LANGUAGE_OPTION" ]] || [[ -z "$TARGET_FOLDER_PATH" ]]; then
        echo "❌ Error: Missing required parameters for generate_client_sdk"
        exit 1
    fi

    # Validate spec file path - must be a simple filename in current directory only
    # Allow: 'openapi-dist.yaml' (filename only, no path components)
    # Block: absolute paths, path traversal (..), subdirectories, any '/' character
    if [[ "$SPEC_FILE" == /* ]]; then
        echo "❌ Error: Absolute paths not allowed: $SPEC_FILE"
        exit 1
    fi
    
    if [[ "$SPEC_FILE" == */* ]] || [[ "$SPEC_FILE" == *".."* ]]; then
        echo "❌ Error: Spec file must be in current directory (no path components allowed): $SPEC_FILE"
        exit 1
    fi
    # If we reach here: valid simple filename in current directory

    echo ""
    echo "━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━"
    echo "🚀 Generating $TARGET_LANGUAGE client SDK"
    echo "━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━"

    # Step 1: Remove content of generated folder
    echo "🧹 Cleaning generated folder at $TARGET_FOLDER_PATH..."
    if [[ -d "$TARGET_FOLDER_PATH" ]]; then
        # Safely clean the directory by removing and recreating it
        # This avoids issues with glob expansion and ensures clean state
        if [[ -n "$TARGET_FOLDER_PATH" ]] && [[ "$TARGET_FOLDER_PATH" != "/" ]] && [[ "$TARGET_FOLDER_PATH" != "." ]]; then
            rm -rf "${TARGET_FOLDER_PATH:?}"
            mkdir -p "$TARGET_FOLDER_PATH"
            echo "✅ Generated folder cleaned at $TARGET_FOLDER_PATH"
        else
            echo "❌ Error: Invalid target folder path for deletion (cannot be root or current directory): $TARGET_FOLDER_PATH"
            exit 1
        fi
    else
        echo "⚠️  Generated folder doesn't exist at $TARGET_FOLDER_PATH, will be created during generation"
        mkdir -p "$TARGET_FOLDER_PATH"
    fi

    # Step 2: Check if spec file exists or regenerate if forced
    echo "📋 Checking for $SPEC_FILE..."
    if [[ ! -f "$SPEC_FILE" ]] || [[ "$FORCE_REGENERATE_DIST" == "true" ]]; then
        if [[ "$FORCE_REGENERATE_DIST" == "true" ]]; then
            echo "🔄 Regenerating $SPEC_FILE from source..."
        else
            echo "❌ Error: $SPEC_FILE not found"
            exit 1
        fi

        # Validate source spec exists
        if [[ ! -f "$SOURCE_SPEC" ]]; then
            echo "❌ Error: Source spec file not found: $SOURCE_SPEC"
            exit 1
        fi

        # Generate spec file from source
        echo "⚙️  Generating $SPEC_FILE from $SOURCE_SPEC..."
        npx @redocly/cli bundle "$SOURCE_SPEC" --output "$SPEC_FILE"

        # Lint the generated spec and check for errors
        echo "🔍 Linting generated $SPEC_FILE..."
        npx @redocly/cli lint "$SPEC_FILE"

        if [[ ! -f "$SPEC_FILE" ]]; then
            echo "❌ Error: Failed to generate $SPEC_FILE"
            exit 1
        fi

        echo "✅ $SPEC_FILE generated successfully"
    else 
        echo "✅ $SPEC_FILE found"
    fi

    # Step 3: Run the tenant params removal script
    echo "🐍 Running tenant parameter removal script..."
    local SCRIPT_DIR
    SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
    local REMOVAL_SCRIPT="$SCRIPT_DIR/remove_tenant_params.py"
    
    if [[ ! -f "$REMOVAL_SCRIPT" ]]; then
        echo "❌ Error: remove_tenant_params.py not found at $REMOVAL_SCRIPT"
        exit 1
    fi

    # Run the script with explicit path
    uv run "$REMOVAL_SCRIPT"
    echo "✅ Tenant parameters processed"

    # Step 4: Generate client
    echo "⚙️  Generating $TARGET_LANGUAGE client..."
    
    # Validate spec file exists before generating
    if [[ ! -f "$SPEC_FILE" ]]; then
        echo "❌ Error: Spec file not found: $SPEC_FILE"
        exit 1
    fi
    
    # Check if custom templates exist for this language
    local TEMPLATE_DIR=""
    if [[ "$TARGET_LANGUAGE" == "Python" ]] && [[ -d "python-templates" ]]; then
        TEMPLATE_DIR="python-templates"
        echo "✨ Using custom Python templates from $TEMPLATE_DIR"
    fi
    
    # Build the generate command
    local GENERATE_CMD=(
        npx @openapitools/openapi-generator-cli generate
        -i "$SPEC_FILE"
        -g "$TARGET_LANGUAGE_OPTION"
        -o "$TARGET_FOLDER_PATH"
        --enable-post-process-file
    )
    
    # Add template directory if it exists
    if [[ -n "$TEMPLATE_DIR" ]]; then
        GENERATE_CMD+=(-t "$TEMPLATE_DIR")
    fi
    
    # Execute the command
    "${GENERATE_CMD[@]}"

    echo "✅ $TARGET_LANGUAGE client SDK generated successfully at $TARGET_FOLDER_PATH!"

    # Python-specific post-generation steps
    if [[ "$TARGET_LANGUAGE" == "Python" ]]; then
        # Create README.md in docs folder for API reference
        local DOCS_DIR="$TARGET_FOLDER_PATH/docs"
        echo "📝 Creating README.md in docs folder..."
        mkdir -p "$DOCS_DIR"
        echo "# Python SDK API Reference" > "$DOCS_DIR/README.md"
        echo "✅ README.md created at $DOCS_DIR/README.md"
    fi

    echo "✅ $TARGET_LANGUAGE client SDK generated successfully at $TARGET_FOLDER_PATH!"
    echo "🎉 $TARGET_LANGUAGE client SDK regeneration complete!"
    echo ""

    # Print next steps based on language
    if [[ "$TARGET_LANGUAGE" == "TypeScript" ]]; then
        echo "Next steps for $TARGET_LANGUAGE:"
        echo "  🚀 Quick setup:"
        echo "     1. cd ../../node/catapa-fetch"
        echo "     2. Install dependencies (if first time): npm install"
        echo "     3. Build the client: npm run build"
        echo "     4. Test the client: node examples/example.js"
    elif [[ "$TARGET_LANGUAGE" == "Python" ]]; then
        echo "Next steps for $TARGET_LANGUAGE:"
        echo ""
        echo "  📝 Note: Using a virtual environment is recommended to:"
        echo "     • Avoid permission issues when installing packages"
        echo "     • Keep dependencies isolated from your system Python"
        echo ""
        echo "  🚀 Quick setup:"
        echo "     1. cd ../../python/catapa-python"
        echo "     2. Please make sure uv is installed, if not, please refer to the README.md for installation guide"
        echo "     3. Create virtual environment:"
        echo "        • uv venv"
        echo "     4. Activate virtual environment:"
        echo "        • Linux/macOS: source .venv/bin/activate"
        echo "        • Windows: .venv\\Scripts\\activate"
        echo "     5. Install the package in development mode:"
        echo "        • uv sync --extra dev"
        echo "     6. Test the client: uv run examples/example.py"
    fi
}
