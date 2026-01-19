#!/usr/bin/env python3
"""
Script to remove tenant-header parameter references from OpenAPI YAML files.

This script finds patterns like:
      parameters:
        - $ref: '#/components/parameters/tenant-header'
        - 

And replaces them with:
      parameters:
        - 

Usage:
    python remove_tenant_params.py [filename]
    
If no filename is provided, defaults to 'openapi-dist.yaml'
"""

import sys
import re
import os
from pathlib import Path


def remove_tenant_params(content):
    """
    Remove tenant-header parameter references from OpenAPI YAML content.
    
    Handles two cases:
    1. tenant-header followed by other parameters - removes just the tenant-header line
    2. tenant-header as the only parameter - replaces with empty parameters array
    
    Args:
        content (str): The YAML file content
        
    Returns:
        str: Modified content with tenant-header references removed
    """
    # Case 1: tenant-header followed by other parameters
    # Pattern to match:
    # parameters:
    #   - $ref: '#/components/parameters/tenant-header'
    #   - (some other parameter)
    #
    # This captures the parameters: line, matches the tenant-header ref, and captures the next parameter line
    pattern1 = r'(\s+parameters:\s*\n)\s+- \$ref: [\'"]?#/components/parameters/tenant-header[\'"]?\s*\n(\s+- )'
    replacement1 = r'\1\2'
    
    modified_content = re.sub(pattern1, replacement1, content, flags=re.MULTILINE)
    
    # Case 2: tenant-header as the only parameter
    # Pattern to match:
    # parameters:
    #   - $ref: '#/components/parameters/tenant-header'
    # (followed by non-parameter content or end of section)
    #
    # This captures the indentation and replaces the whole parameters section with empty array
    pattern2 = r'(\s+)parameters:\s*\n\s+- \$ref: [\'"]?#/components/parameters/tenant-header[\'"]?\s*\n'
    replacement2 = r'\1parameters: []\n'
    
    modified_content = re.sub(pattern2, replacement2, modified_content, flags=re.MULTILINE)
    
    return modified_content


def main():
    """Main function to process the OpenAPI YAML file."""
    
    # Get filename from command line argument or use default
    if len(sys.argv) > 1:
        filename = sys.argv[1]
    else:
        filename = 'openapi-dist.yaml'
    
    # Check if file exists
    if not os.path.exists(filename):
        print(f"Error: File '{filename}' not found.")
        sys.exit(1)
    
    print(f"Processing file: {filename}")
    
    # Create backup (remove existing backup first)
    backup_filename = f"{filename}.backup"
    if os.path.exists(backup_filename):
        print(f"Removing existing backup: {backup_filename}")
        os.remove(backup_filename)
    
    print(f"Creating fresh backup: {backup_filename}")
    with open(filename, 'r', encoding='utf-8') as original:
        with open(backup_filename, 'w', encoding='utf-8') as backup:
            backup.write(original.read())
    
    # Read the file
    try:
        with open(filename, 'r', encoding='utf-8') as file:
            content = file.read()
    except Exception as e:
        print(f"Error reading file: {e}")
        sys.exit(1)
    
    # Count occurrences before modification
    # Case 1: tenant-header followed by other parameters
    pattern1_count = len(re.findall(
        r'(\s+parameters:\s*\n)\s+- \$ref: [\'"]?#/components/parameters/tenant-header[\'"]?\s*\n(\s+- )',
        content,
        flags=re.MULTILINE
    ))
    
    # Case 2: tenant-header as the only parameter
    pattern2_count = len(re.findall(
        r'(\s+)parameters:\s*\n\s+- \$ref: [\'"]?#/components/parameters/tenant-header[\'"]?\s*\n',
        content,
        flags=re.MULTILINE
    ))
    
    total_count = pattern1_count + pattern2_count
    print(f"Found {total_count} tenant-header parameter references to remove:")
    print(f"  - {pattern1_count} with other parameters (remove line)")
    print(f"  - {pattern2_count} as only parameter (replace with empty array)")
    
    # Apply the transformation
    modified_content = remove_tenant_params(content)
    
    # Check if any changes were made
    if content == modified_content:
        print("No changes needed - no tenant-header parameters found in the specified pattern")
        return
    
    # Write the modified content back
    try:
        with open(filename, 'w', encoding='utf-8') as file:
            file.write(modified_content)
        print(f"Successfully updated {filename}")
        print(f"Removed {total_count} tenant-header parameter references")
    except Exception as e:
        print(f"Error writing file: {e}")
        sys.exit(1)


if __name__ == "__main__":
    main()
