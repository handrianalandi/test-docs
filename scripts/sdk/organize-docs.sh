#!/bin/bash

# Function to organize documentation into api/ and models/ folders
# API classes go to api/, everything else goes to models/
# Parameters:
#   $1 - TARGET_FOLDER_PATH: Path to the generated folder (e.g., generated/)
organize_docs() {
    local TARGET_FOLDER_PATH="$1"
    local DOCS_DIR="$TARGET_FOLDER_PATH/docs"
    
    if [[ ! -d "$DOCS_DIR" ]]; then
        echo "⚠️  Warning: Docs directory not found at $DOCS_DIR"
        echo "   Documentation may not have been generated yet."
        return 0
    fi
    
    echo "📚 Organizing documentation in $DOCS_DIR..."
    
    # Create target directories
    local API_DIR="$DOCS_DIR/api"
    local MODELS_DIR="$DOCS_DIR/models"
    mkdir -p "$API_DIR" "$MODELS_DIR"
    
    # Find and move API files (files ending with Api.md or in Apis folder)
    local API_COUNT=0
    local MODELS_COUNT=0
    
    # Use find with -exec to avoid subshell issues
    # Process API files first (files ending with Api.md)
    find "$DOCS_DIR" -type f -name "*Api.md" ! -path "*/api/*" ! -path "*/models/*" 2>/dev/null | while IFS= read -r file; do
        [[ -z "$file" ]] && continue
        local filename=$(basename "$file")
        local dest="$API_DIR/$filename"
        if [[ "$file" != "$dest" ]] && [[ -f "$file" ]]; then
            if mv "$file" "$dest" 2>/dev/null; then
                echo "   ✅ Moved API doc: $filename -> api/"
            fi
        fi
    done
    
    # Count API files moved
    API_COUNT=$(find "$API_DIR" -type f -name "*.md" 2>/dev/null | wc -l)
    
    # Process files in Apis folder
    if [[ -d "$DOCS_DIR/Apis" ]]; then
        find "$DOCS_DIR/Apis" -type f -name "*.md" 2>/dev/null | while IFS= read -r file; do
            [[ -z "$file" ]] && continue
            local filename=$(basename "$file")
            local dest="$API_DIR/$filename"
            if [[ "$file" != "$dest" ]] && [[ -f "$file" ]]; then
                if mv "$file" "$dest" 2>/dev/null; then
                    echo "   ✅ Moved API doc: $filename -> api/"
                fi
            fi
        done
        # Re-count after moving from Apis folder
        API_COUNT=$(find "$API_DIR" -type f -name "*.md" 2>/dev/null | wc -l)
    fi
    
    # Process all other files (non-API files)
    find "$DOCS_DIR" -type f -name "*.md" ! -name "*Api.md" ! -name "README.md" ! -path "*/api/*" ! -path "*/models/*" ! -path "*/Apis/*" 2>/dev/null | while IFS= read -r file; do
        [[ -z "$file" ]] && continue
        local filename=$(basename "$file")
        local dest="$MODELS_DIR/$filename"
        if [[ "$file" != "$dest" ]] && [[ -f "$file" ]]; then
            if mv "$file" "$dest" 2>/dev/null; then
                echo "   ✅ Moved to models/: $filename -> models/"
            fi
        fi
    done
    
    # Count models files moved
    MODELS_COUNT=$(find "$MODELS_DIR" -type f -name "*.md" 2>/dev/null | wc -l)
    
    if [[ $API_COUNT -eq 0 ]] && [[ $MODELS_COUNT -eq 0 ]]; then
        echo "   No documentation files found to organize."
        return 0
    fi
    
    echo "   Found $API_COUNT API files and $MODELS_COUNT other files"
    
    # Update links in documentation files
    if [[ $API_COUNT -gt 0 ]] || [[ $MODELS_COUNT -gt 0 ]]; then
        echo "🔗 Updating links in documentation files..."
        
        # Update links in API files
        find "$API_DIR" -type f -name "*.md" -print0 | while IFS= read -r -d '' file; do
            local api_filename=$(basename "$file")
            # Update ../Models/ references to ../models/
            sed -i 's|(\.\./Models/|(../models/|g' "$file" 2>/dev/null
            # Update ../Apis/ references to ../api/
            sed -i 's|(\.\./Apis/|(../api/|g' "$file" 2>/dev/null
            # Update direct model file references (not API files) to point to ../models/
            # Pattern: [text](ModelName.md) where ModelName.md is not an API file and not already a path
            sed -i 's|(\([A-Za-z][A-Za-z0-9_]*\.md\)|(../models/\1|g' "$file" 2>/dev/null
            # Fix any API file references that were incorrectly changed to point to ../api/
            sed -i 's|(\.\./models/\([A-Za-z][A-Za-z0-9_]*Api\.md\)|(../api/\1|g' "$file" 2>/dev/null
            # Fix self-references (same file) - remove path prefix
            sed -i "s|(\.\./models/$api_filename|($api_filename|g" "$file" 2>/dev/null
            sed -i "s|(\.\./api/$api_filename|($api_filename|g" "$file" 2>/dev/null
        done
        
        # Update links in models files
        find "$MODELS_DIR" -type f -name "*.md" -print0 | while IFS= read -r -d '' file; do
            local model_filename=$(basename "$file")
            # Update ../Models/ references to ../models/
            sed -i 's|(\.\./Models/|(../models/|g' "$file" 2>/dev/null
            # Update ../Apis/ references to ../api/
            sed -i 's|(\.\./Apis/|(../api/|g' "$file" 2>/dev/null
            # Update direct API file references to point to ../api/
            # Pattern: [text](ApiNameApi.md) - must be done before general pattern
            sed -i 's|(\([A-Za-z][A-Za-z0-9_]*Api\.md\)|(../api/\1|g' "$file" 2>/dev/null
            # Update other direct file references (non-API) - keep as same directory (just filename)
            # Model files in same directory can reference each other directly
            # But if it's already been changed to ../models/, leave it
            # Only update if it's a direct reference without path
            sed -i 's|(\([A-Za-z][A-Za-z0-9_]*\.md\)|(\1|g' "$file" 2>/dev/null
            # Fix self-references (same file) - ensure it's just the filename
            sed -i "s|(\.\./models/$model_filename|($model_filename|g" "$file" 2>/dev/null
            sed -i "s|(\.\./api/$model_filename|($model_filename|g" "$file" 2>/dev/null
        done
        
        # Update README.md references
        local README_FILE="$TARGET_FOLDER_PATH/README.md"
        if [[ -f "$README_FILE" ]]; then
            # Update API references: docs/ApiNameApi.md -> docs/api/ApiNameApi.md
            # Pattern matches: [text](docs/ApiNameApi.md) or [text](docs/ApiNameApi.md#anchor)
            sed -i 's|(docs/\([A-Za-z][A-Za-z0-9_]*Api\.md\)|(docs/api/\1|g' "$README_FILE" 2>/dev/null
            
            # Update other references: docs/ModelName.md -> docs/models/ModelName.md
            # Pattern matches files (not ending with Api.md)
            # First pass: update all docs/ModelName.md patterns
            sed -i 's|(docs/\([A-Za-z][A-Za-z0-9_]*\.md\)|(docs/models/\1|g' "$README_FILE" 2>/dev/null
            # Second pass: fix any API files that were incorrectly changed
            sed -i 's|(docs/models/\([A-Za-z][A-Za-z0-9_]*Api\.md\)|(docs/api/\1|g' "$README_FILE" 2>/dev/null
            
            echo "   ✅ Updated references in README.md"
        fi
    fi
    
    # Clean up empty directories
    for old_dir in "$DOCS_DIR/Apis" "$DOCS_DIR/Models"; do
        if [[ -d "$old_dir" ]]; then
            # Check if directory is empty (excluding hidden files)
            if [[ -z "$(find "$old_dir" -mindepth 1 -maxdepth 1 -not -name '.*' 2>/dev/null)" ]]; then
                rmdir "$old_dir" 2>/dev/null && echo "   🧹 Removed empty directory: $(basename "$old_dir")"
            fi
        fi
    done
    
    # Create README.md files in api/ and models/ folders for GitBook page headers
    if [[ $API_COUNT -gt 0 ]]; then
        echo "# APIs" > "$API_DIR/README.md"
    fi
    
    if [[ $MODELS_COUNT -gt 0 ]]; then
        echo "# Models" > "$MODELS_DIR/README.md"
    fi
    
    echo "✅ Documentation organized:"
    echo "   📁 api/: $API_COUNT files"
    echo "   📁 models/: $MODELS_COUNT files"
}

