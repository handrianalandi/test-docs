# OpenAPI Generator Template Customization Guide

This guide explains how to customize the OpenAPI Generator templates for the Catapa SDK.

## 📋 Overview

The SDK generation supports custom templates through OpenAPI Generator's templating system. You can customize how the generated SDK code looks and behaves by providing custom templates.

**Key Concept:** You only need to provide templates for the parts you want to customize. OpenAPI Generator automatically falls back to its built-in defaults for templates you don't provide.

## 🚀 Quick Start

### 1. Extract the Templates You Need

Instead of extracting all templates, extract only what you want to customize:

```bash
# Extract all templates to see what's available
npx @openapitools/openapi-generator-cli author template -g python -o /tmp/python-templates

# Browse available templates
ls /tmp/python-templates/

# Create your custom templates directory
mkdir -p python-templates

# Copy only the template(s) you want to customize
cp /tmp/python-templates/api_doc.mustache ./python-templates/
```

### 2. Customize the Template

Edit the template file using your preferred editor:

```bash
vim python-templates/api_doc.mustache
```

Make your changes using Mustache syntax (see [Mustache Syntax](#-mustache-syntax-basics) below).

### 3. Regenerate SDK

After modifying templates, regenerate the SDK:

```bash
./regenerate-client.sh -py
```

The script will automatically detect and use your custom templates from `python-templates/` if the directory exists.

## 📁 Available Templates

You can customize any of these templates by extracting and copying them to `python-templates/`:

### Core Templates

- `api_client.mustache` - Main API client class
- `api.mustache` - Individual API classes (e.g., MasterDataApi)
- `model.mustache` - Model/DTO classes
- `configuration.mustache` - Configuration class
- `rest.mustache` - HTTP client implementation
- `exceptions.mustache` - Exception classes

### Documentation Templates

- `README.mustache` - Generated README
- `api_doc.mustache` - API documentation
- `api_doc_example.mustache` - Code examples in documentation
- `model_doc.mustache` - Model documentation

### Utility Templates

- `__init__.mustache` - Package initialization
- `__init__api.mustache` - API package initialization
- `__init__model.mustache` - Models package initialization
- `pyproject.mustache` - Project configuration

### Test Templates

- `api_test.mustache` - API test files
- `model_test.mustache` - Model test files

**Best Practice:** Only add templates to `python-templates/` when you actually customize them!

## 🎨 Example Customizations

Here are practical examples of what you can customize:

### Example 1: Customize API Documentation

Create `python-templates/api_doc.mustache` to add custom headers to API documentation:

```mustache
# {{packageName}}.{{classname}}{{#description}}
{{.}}{{/description}}

> **💡 Tip:** Use the `catapa.Catapa` wrapper for easy authentication!

All URIs are relative to *{{basePath}}*
```

### Example 2: Customize Code Examples

Create `python-templates/api_doc_example.mustache` to show your custom usage pattern:

````mustache
```python
from catapa import Catapa, {{{classname}}}
from {{{packageName}}}.rest import ApiException

# Initialize client
client = Catapa(
    tenant="your-tenant",
    client_id="your-client-id",
    client_secret="your-secret"
)

# Use the API
api_instance = {{{classname}}}(client)
try:
    {{#returnType}}result = {{/returnType}}api_instance.{{{operationId}}}({{#allParams}}{{paramName}}={{paramName}}{{^-last}}, {{/-last}}{{/allParams}})
    {{#returnType}}print(result){{/returnType}}
except ApiException as e:
    print(f"Error: {e}")
````

````

### Example 3: Add Custom Headers to All API Calls

Create `python-templates/api_client.mustache` and add this method:

```python
def call_api(self, *args, **kwargs):
    # Add custom headers
    if self.configuration:
        self.configuration.default_headers['X-Custom-Header'] = 'custom-value'
    return super().call_api(*args, **kwargs)
````

### Example 4: Add Helper Method to Models

Create `python-templates/model.mustache` and add custom methods:

```python
def to_simple_dict(self) -> Dict[str, Any]:
    """Convert to dict excluding None values."""
    result = {}
    for attr, value in self.to_dict().items():
        if value is not None:
            result[attr] = value
    return result
```

## 🔧 Mustache Syntax Basics

Templates use Mustache syntax with variables provided by OpenAPI Generator:

```mustache
{{! This is a comment }}
{{packageName}}                      {{! Variable substitution }}
{{#models}}                          {{! Section/loop start }}
  {{classname}}                      {{! Nested variable }}
{{/models}}                          {{! Section/loop end }}
{{^hasMore}}                         {{! Inverted section (if not) }}
  Last item
{{/hasMore}}
{{#hasMore}}, {{/hasMore}}          {{! Conditional rendering }}
```

### Common Variables

- `{{packageName}}` - Package name (e.g., `openapi_client`)
- `{{apiPackage}}` - API package name
- `{{modelPackage}}` - Model package name
- `{{classname}}` - Current class name
- `{{operations}}` - List of API operations
- `{{models}}` - List of models
- `{{imports}}` - Required imports

## 📚 Template Examples

### Example: Add License Header

Create `python-templates/partial_header.mustache`:

```mustache
# Copyright (c) 2026 Your Company
# Licensed under MIT License
#
{{>partial_header}}
```

### Example: Add Tenant ID Support

Create `python-templates/api_client.mustache` and add:

```python
def set_tenant_id(self, tenant_id: str) -> None:
    """Set tenant ID for all subsequent requests."""
    if self.configuration:
        self.configuration.default_headers['X-Tenant-ID'] = tenant_id

def get_tenant_id(self) -> str | None:
    """Get current tenant ID."""
    if self.configuration and self.configuration.default_headers:
        return self.configuration.default_headers.get('X-Tenant-ID')
    return None
```

### Example: Custom Model Representation

Create `python-templates/model.mustache` and customize the `__repr__` method:

```python
def __repr__(self):
    """For debugging."""
    return f"{self.__class__.__name__}({{#vars}}{{name}}={self.{{name}}!r}{{^-last}}, {{/-last}}{{/vars}})"
```

## 🔄 Development Workflow

1. **Extract Template**

   ```bash
   # Extract all templates to explore
   npx @openapitools/openapi-generator-cli author template -g python -o /tmp/python-templates

   # Create your templates directory
   mkdir -p python-templates

   # Copy the template you want to customize
   cp /tmp/python-templates/api_doc.mustache ./python-templates/
   ```

2. **Make Changes**

   ```bash
   vim python-templates/api_doc.mustache
   ```

3. **Regenerate SDK**

   ```bash
   ./regenerate-client.sh -py
   ```

4. **Test Changes**

   ```bash
   cd ../../python/catapa-python/examples
   uv sync --extra dev
   uv run example.py
   ```

5. **Iterate**
   - Review generated code in `python/catapa-python/catapa_python/generated/`
   - Adjust templates as needed
   - Regenerate and test again

## ⚠️ Important Notes

### Template Changes vs. Manual Edits

- **DO**: Edit templates in `python-templates/`
- **DON'T**: Manually edit files in `python/catapa-python/catapa_python/generated/`
- Generated files will be overwritten on the next regeneration

### Custom Code Placement

Place custom code (not generated) outside the `generated/` directory:

- `python/catapa-python/catapa_python/catapa/` - Custom wrapper code
- `python/catapa-python/catapa_python/catapa/auth/` - Custom auth code
- `python/catapa-python/catapa_python/catapa/auto_refresh_api_client.py` - Custom client

### Version Control

**Recommended**: Commit both templates and generated code

- `python-templates/` - Your customizations
- `python/catapa-python/catapa_python/generated/` - Generated output

This allows team members to see what changed in both the templates and the output.

## 🐛 Troubleshooting

### Templates Not Applied

**Problem**: Changes to templates don't appear in generated code.

**Solutions**:

1. Ensure templates are in the correct directory: `python-templates/`
2. Check for typos in template filenames
3. Verify Mustache syntax is correct
4. Check the generation script output for errors

### Generation Fails After Template Modification

**Problem**: SDK generation fails with errors.

**Solutions**:

1. Check Mustache syntax in modified templates
2. Restore original template to see if issue persists
3. Check OpenAPI Generator logs for specific errors
4. Ensure all required variables are present

### How to Revert to Default Templates

To stop using custom templates and revert to OpenAPI Generator's defaults:

```bash
# Option 1: Remove the templates directory
rm -rf python-templates/

# Option 2: Rename it for backup
mv python-templates python-templates.backup

# Regenerate - will use OpenAPI Generator's defaults
./regenerate-client.sh -py
```

To restore customizations later:

```bash
# Restore the backup
mv python-templates.backup python-templates

# Regenerate with your customizations
./regenerate-client.sh -py
```

## 📖 Additional Resources

- [OpenAPI Generator Templating Guide](https://openapi-generator.tech/docs/templating)
- [Mustache Documentation](https://mustache.github.io/mustache.5.html)
- [OpenAPI Generator Variables](https://openapi-generator.tech/docs/templating#template-variables)
- [Python Generator Options](https://openapi-generator.tech/docs/generators/python)

## 🎯 Use Cases

### Multi-Tenant Support

Automatically add tenant context to all API calls by customizing `api_client.mustache`.

### Custom Authentication

Integrate custom auth mechanisms by modifying `configuration.mustache` and `api_client.mustache`.

### Logging and Monitoring

Add logging hooks to all API calls in `api_client.mustache`.

### Custom Serialization

Modify model serialization in `model.mustache`.

### API Versioning

Add version headers automatically in `api_client.mustache`.

## 💡 Best Practices

1. **Start Small**: Make one change at a time and test
2. **Comment Templates**: Add comments to document your customizations
3. **Keep Backups**: Save original templates before major changes
4. **Test Thoroughly**: Test all generated APIs and models after template changes
5. **Document Changes**: Keep notes on why you made specific customizations
6. **Version Control**: Commit template changes with descriptive messages

## 🔍 Finding the Right Template

To find which template generates specific code:

1. Look at the generated file structure
2. Check the template with a similar name:
   - `openapi_client/api/` → `api.mustache`
   - `openapi_client/models/` → `model.mustache`
   - `openapi_client/api_client.py` → `api_client.mustache`
3. Search template contents for unique strings from generated code

## 🚀 Advanced: TypeScript Templates

To customize TypeScript SDK templates:

1. **Extract TypeScript Templates**:

   ```bash
   npx @openapitools/openapi-generator-cli author template -g typescript-fetch -o ./typescript-templates
   ```

2. **Update `common-function.sh`**:
   Add TypeScript template detection similar to Python:

   ```bash
   if [[ "$TARGET_LANGUAGE" == "TypeScript" ]] && [[ -d "typescript-templates" ]]; then
       TEMPLATE_DIR="typescript-templates"
       echo "✨ Using custom TypeScript templates from $TEMPLATE_DIR"
   fi
   ```

3. **Regenerate**:
   ```bash
   ./regenerate-client.sh -ts
   ```

---

**Happy Template Customization! 🎨**
