#!/usr/bin/env python3
"""
Function to organize documentation into api/ and models/ folders.
API classes go to api/, everything else goes to models/
"""

import re
import shutil
from pathlib import Path


def organize_docs(target_folder_path: str) -> None:
    """
    Organize documentation files into api/ and models/ folders.
    
    Args:
        target_folder_path: Path to the generated folder (e.g., generated/)
    """
    target_path = Path(target_folder_path)
    docs_dir = target_path / "docs"
    
    if not docs_dir.exists():
        print(f"⚠️  Warning: Docs directory not found at {docs_dir}")
        print("   Documentation may not have been generated yet.")
        return
    
    print(f"📚 Organizing documentation in {docs_dir}...")
    
    # Create target directories
    api_dir = docs_dir / "api"
    models_dir = docs_dir / "models"
    api_dir.mkdir(exist_ok=True)
    models_dir.mkdir(exist_ok=True)
    
    # Find all markdown files
    all_md_files = list(docs_dir.rglob("*.md"))
    
    # Filter out files already in target directories and README files
    files_to_process = []
    for file in all_md_files:
        # Skip README files
        if file.name == "README.md":
            continue
        
        # Skip files already in target directories
        if "api" in file.parts or "models" in file.parts:
            continue
        
        files_to_process.append(file)
    
    api_count = 0
    models_count = 0
    
    # Process files
    for file in files_to_process:
        filename = file.name
        dirname = file.parent
        
        # Check if it's an API file
        is_api_file = (
            filename.endswith("Api.md") or
            "Apis" in str(dirname) or
            dirname.name == "Apis"
        )
        
        if is_api_file:
            dest = api_dir / filename
            if file != dest and file.exists():
                try:
                    shutil.move(str(file), str(dest))
                    print(f"   ✅ Moved API doc: {filename} -> api/")
                    api_count += 1
                except Exception as e:
                    print(f"   ⚠️  Warning: Could not move {filename}: {e}")
        else:
            # Everything else goes to models/
            dest = models_dir / filename
            if file != dest and file.exists():
                try:
                    shutil.move(str(file), str(dest))
                    print(f"   ✅ Moved to models/: {filename} -> models/")
                    models_count += 1
                except Exception as e:
                    print(f"   ⚠️  Warning: Could not move {filename}: {e}")
    
    if api_count == 0 and models_count == 0:
        print("   No documentation files found to organize.")
        return
    
    print(f"   Found {api_count} API files and {models_count} other files")
    
    # Update links in documentation files
    if api_count > 0 or models_count > 0:
        print("🔗 Updating links in documentation files...")
        
        # Update links in API files
        for file in api_dir.glob("*.md"):
            update_api_file_links(file)
        
        # # Update links in models files
        # for file in models_dir.glob("*.md"):
        #     update_model_file_links(file)
        
        # Update README.md references in the main README and docs/README
        readme_file = target_path / "README.md"
        if readme_file.exists():
            update_readme_links(readme_file)
            print("   ✅ Updated references in README.md")
        
        # # Also update docs/README.md if it exists
        # docs_readme_file = docs_dir / "README.md"
        # if docs_readme_file.exists():
        #     update_readme_links(docs_readme_file)
        #     print("   ✅ Updated references in docs/README.md")
    
    # Clean up empty directories
    for old_dir_name in ["Apis", "Models"]:
        old_dir = docs_dir / old_dir_name
        if old_dir.exists():
            try:
                # Check if directory is empty (excluding hidden files)
                if not any(f for f in old_dir.iterdir() if not f.name.startswith('.')):
                    old_dir.rmdir()
                    print(f"   🧹 Removed empty directory: {old_dir_name}")
            except Exception as e:
                print(f"   ⚠️  Warning: Could not remove {old_dir_name}: {e}")
    
    # Create README.md files in api/ and models/ folders for GitBook page headers
    if api_count > 0:
        (api_dir / "README.md").write_text("# APIs\n")
    
    if models_count > 0:
        (models_dir / "README.md").write_text("# Models\n")
    
    print("✅ Documentation organized:")
    print(f"   📁 api/: {api_count} files")
    print(f"   📁 models/: {models_count} files")


def update_api_file_links(file_path: Path) -> None:
    """Update links in API documentation files."""
    try:
        content = file_path.read_text(encoding='utf-8')
        original_content = content
        api_filename = file_path.name
        
        # # Update ../Models/ references to ../models/
        # content = str.replace(r'\(\.\./Models/', r'(../models/', content)
        
        # # Update ../Apis/ references to ../api/
        # content = str.replace(r'\(\.\./Apis/', r'(../api/', content)
        
        # Update direct model file references (not API files) to point to ../models/
        # Pattern: [text](ModelName.md) where ModelName.md is not an API file
        content = re.sub(
            r'\(([A-Za-z]\w*\.md)\)',
            r'(../models/\1)',
            content
        )
        
        # Fix any API file references that were incorrectly changed to point to ../api/
        content = re.sub(
            r'\(\.\./models/([A-Za-z]\w*Api\.md)\)',
            r'(../api/\1)',
            content
        )
        
        # Fix self-references (same file) - remove path prefix
        content = content.replace(f'(../models/{api_filename}', f'({api_filename}')
        content = content.replace(f'(../api/{api_filename}', f'({api_filename}')
        
        if content != original_content:
            file_path.write_text(content, encoding='utf-8')
    except Exception as e:
        print(f"   ⚠️  Warning: Could not update links in {file_path.name}: {e}")


# def update_model_file_links(file_path: Path) -> None:
#     """Update links in model documentation files."""
#     try:
#         content = file_path.read_text(encoding='utf-8')
#         original_content = content
#         model_filename = file_path.name
        
#         # # Update ../Models/ references to ../models/
#         # content = re.sub(r'\(\.\./Models/', r'(../models/', content)
        
#         # # Update ../Apis/ references to ../api/
#         # content = re.sub(r'\(\.\./Apis/', r'(../api/', content)
        
#         # Update direct API file references to point to ../api/
#         # Pattern: [text](ApiNameApi.md) - must be done before general pattern
#         # content = re.sub(
#         #     r'\(([A-Za-z][A-Za-z0-9_]*Api\.md)\)',
#         #     r'(../api/\1)',
#         #     content
#         # )
        
#         # Update other direct file references (non-API) - keep as same directory (just filename)
#         # Model files in same directory can reference each other directly
#         # Only update if it's a direct reference without path (already handled by previous regex)
        
#         # Fix self-references (same file) - ensure it's just the filename
#         content = content.replace(f'(../models/{model_filename}', f'({model_filename}')
#         content = content.replace(f'(../api/{model_filename}', f'({model_filename}')
        
#         if content != original_content:
#             file_path.write_text(content, encoding='utf-8')
#     except Exception as e:
#         print(f"   ⚠️  Warning: Could not update links in {file_path.name}: {e}")


def update_readme_links(readme_path: Path) -> None:
    """Update references in README.md to point to new locations."""
    try:
        content = readme_path.read_text(encoding='utf-8')
        original_content = content
        
        # Update API references: docs/ApiNameApi.md -> docs/api/ApiNameApi.md
        # Handles both with and without anchors: docs/ApiNameApi.md or docs/ApiNameApi.md#anchor
        content = re.sub(
            r'\(docs/([A-Za-z]\w*Api\.md)(#[^)]*)?\)',
            r'(docs/api/\1\2)',
            content
        )
        
        # Update other references: docs/ModelName.md -> docs/models/ModelName.md
        # First pass: update all docs/ModelName.md patterns (with or without anchors)
        content = re.sub(
            r'\(docs/([A-Za-z]\w*\.md)(#[^)]*)?\)',
            r'(docs/models/\1\2)',
            content
        )
        
        # Second pass: fix any API files that were incorrectly changed
        # content = re.sub(
        #     r'\(docs/models/([A-Za-z][A-Za-z0-9_]*Api\.md)(#[^)]*)?\)',
        #     r'(docs/api/\1\2)',
        #     content
        # )
        
        if content != original_content:
            readme_path.write_text(content, encoding='utf-8')
    except Exception as e:
        print(f"   ⚠️  Warning: Could not update README.md: {e}")


if __name__ == "__main__":
    import sys
    
    if len(sys.argv) < 2:
        print("Usage: organize-docs.py <target_folder>")
        print("Example: organize-docs.py ../../python/catapa-python/catapa_python/generated")
        sys.exit(1)
    
    organize_docs(sys.argv[1])

