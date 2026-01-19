# CATAPA OpenAPI SDK

This folder contains the TypeScript and Python SDKs generated from the CATAPA OpenAPI specification and utilities to regenerate the client code.

## 🚀 Multi-Environment Support (NEW!)

We now support **automated SDK publishing** across two environments with **selective TypeScript/Python operations**:

- **DEV (Alpha)**: `1.5.1-alpha.1` - Development/testing
- **PROD (Stable)**: `1.3.3` - Production releases

### Quick Commands

```bash
# Generate SDK (both, TypeScript only, or Python only)
./regenerate-client.sh -r -ts -py    # Both (default)
./regenerate-client.sh -r -ts        # TypeScript only
./regenerate-client.sh -r -py        # Python only

# Update version
./update-version.sh 1.5.1-alpha.1              # Both SDKs (default)
./update-version.sh 1.5.1-alpha.1 -ts # TypeScript only
./update-version.sh 1.5.1-alpha.1 -py     # Python only

# Publish SDK
export NPM_TOKEN=xxx PYPI_TOKEN=xxx
./publish-sdk.sh                     # Both SDKs (default)
./publish-sdk.sh -ts                 # TypeScript only (needs NPM_TOKEN)
./publish-sdk.sh -py                 # Python only (needs PYPI_TOKEN)
```

### 🎯 Selective SDK Operations

All three SDK management scripts now support selective operations:

| Script                 | Purpose               | Options                                                  |
| ---------------------- | --------------------- | -------------------------------------------------------- |
| `regenerate-client.sh` | Generate SDK code     | `-ts` (TypeScript) `-py` (Python) `-r` (regenerate spec) |
| `update-version.sh`    | Update versions       | `-ts` or `--typescript`, `-py` or `--python`             |
| `publish-sdk.sh`       | Publish to registries | `-ts` or `--typescript`, `-py` or `--python`             |

**Benefits:**

- ⚡ Faster iteration - skip unnecessary SDK
- 🔧 Reduced dependencies - don't need npm/node for Python-only work
- ✅ Better error messages - only validates required environment variables
- 🎯 Flexible workflows - independent SDK releases

### 📚 Documentation

- **[multi-environment-guide.md](./multi-environment-guide.md)** - Detailed multi-env guide

## 🚀 CI/CD Automation

The CI/CD pipeline automatically:

- ✅ Validates OpenAPI specifications
- ✅ Generates TypeScript and Python SDKs
- ✅ Manages versioning with environment suffixes
- ✅ Publishes to private package registries

## Packages

- **`node/catapa-fetch/`**

  - Generated TypeScript client based on the `typescript-fetch` generator.
  - Generated sources live in `node/catapa-fetch/src/generated/` and are overwritten by the regeneration script.
  - Includes examples and a build setup to package the client for use in browser/Node environments using Fetch.
  - Build: `npm run build` (from within `node/catapa-fetch/`).

- **`node/node/`**

  - Thin Node.js-oriented SDK that wraps/organizes client access for server-side usage.
  - Compiles to both ESM and CJS outputs under `node/node/lib/` via two TypeScript configs (`tsconfig.json` and `tsconfig-cjs.json`).
  - Build: `npm run tsc` (from within `node/node/`).

- **`python/catapa-python/`**
  - Generated Python client based on the `python` generator.
  - Generated sources live in `python/catapa-python/catapa_python/generated/` and are overwritten by the regeneration script.
  - Includes examples and a setup for Python package distribution.
  - Install: `pip install -e .` (from within `python/catapa-python/`).

## Client Regeneration Script

Script path: `scripts/sdk/regenerate-client.sh`

The script removes old generated sources, preprocesses the OpenAPI spec to strip tenant header parameters, and regenerates client SDKs (TypeScript and/or Python) based on the specified options.

Make sure you run the script with `-r` option to regenerate the `openapi-dist.yaml` file from the source `openapi.yaml` if there are changes in the OpenAPI specification.

### What it does

1. **Clean**: empties the target generated folder(s) if present.
2. **Verify/Generate spec**: checks if `scripts/sdk/openapi-dist.yaml` exists, or generates it from `openapi.yaml` if the `-r` or `--regenerate` flag is used.
3. **Preprocess spec**: runs `scripts/sdk/remove_tenant_params.py` which:
   - Creates a backup at `scripts/sdk/openapi-dist.yaml.backup`.
   - Removes references to `#/components/parameters/tenant-header`.
4. **Generate client**: runs `npx @openapitools/openapi-generator-cli generate` for each selected language:
   - TypeScript: `-g typescript-fetch` → `node/catapa-fetch/src/generated`
   - Python: `-g python` → `python/catapa-python/catapa_python/generated`

### Prerequisites

- **Node.js** >= 14 and **npm**/**npx** available
- **Java** (OpenJDK) 11+ installed and on PATH (required by OpenAPI Generator)
- **Python 3.8 or above** to run `remove_tenant_params.py`, generate Python SDK and run Python client example
- **uv** for faster package management and build the SDK, please refer to the [Official Documentation](https://docs.astral.sh/uv/getting-started/installation/) for installation guide.
- **Internet access** for `npx` to download the OpenAPI Generator if not cached
- Files present in `scripts/sdk/`:
  - `openapi-dist.yaml`

### How to run

From the `scripts/sdk/` directory:

```bash
# Make executable once (if needed)
chmod +x regenerate-client.sh

# Generate TypeScript client using existing openapi-dist.yaml (default)
./regenerate-client.sh

# Generate TypeScript client (explicit)
./regenerate-client.sh --typescript
./regenerate-client.sh -ts

# Generate Python client
./regenerate-client.sh --python
./regenerate-client.sh -py

# Generate both TypeScript and Python clients
./regenerate-client.sh -ts -py

# Regenerate openapi-dist.yaml from source before generating (needed if spec changed)
./regenerate-client.sh --regenerate
./regenerate-client.sh -r

# Regenerate spec and generate both clients (needed if spec changed)
./regenerate-client.sh -r -ts -py

# Show help
./regenerate-client.sh --help
```

**Version Management:**

```bash
# Update both SDKs (default)
./update-version.sh 1.5.1-alpha.1

# Update TypeScript only
./update-version.sh 1.5.1-alpha.1 -ts

# Update Python only
./update-version.sh 1.5.1-alpha.1 -py

# Show help
./update-version.sh --help
```

**Publishing:**

```bash
# Set tokens (only needed for SDKs you're publishing)
export NPM_TOKEN="your-npm-token"        # Required for TypeScript
export PYPI_TOKEN="your-pypi-token"      # Required for Python
export NPM_REGISTRY="https://your-npm-registry.com/"
export PYPI_REGISTRY="https://your-pypi-server.com/"

# Publish both SDKs (default)
./publish-sdk.sh

# Publish TypeScript only (only needs NPM_TOKEN)
./publish-sdk.sh -ts

# Publish Python only (only needs PYPI_TOKEN)
./publish-sdk.sh -py

# Show help
./publish-sdk.sh --help
```

After generation, build the package(s):

**For TypeScript:**

```bash
cd ../../node/catapa-fetch
# If first time, install deps
npm install
# Build the client
npm run build
```

**For Python:**
Please consider to use a virtual environment for Python package installation. read more about [Troubleshooting](./README.md#troubleshooting).

```bash
cd ../../python/catapa-python

uv build
```

### Outputs

- Generated TypeScript API code at `node/catapa-fetch/src/generated/` (overwritten on each run, if TypeScript generation is selected).
- Generated Python API code at `python/catapa-python/catapa_python/generated/` (overwritten on each run, if Python generation is selected).
- Backup of the original spec at `openapi-dist.yaml.backup`.

### Troubleshooting

- **Java not found**: install OpenJDK 11+ and ensure `java` is on your PATH.
- **`openapi-dist.yaml` missing**: ensure the OpenAPI spec file exists in `scripts/sdk/` or you could run the shell script using `-r` argument to regenerate the dist file.
- **`npx` generator errors**: check internet connectivity or run `npx @openapitools/openapi-generator-cli version` to validate the CLI setup.
- **"NPM_TOKEN not set" but I only want Python**: Use `-py` flag to skip TypeScript:
  ```bash
  ./publish-sdk.sh -py
  ```
- **"PYPI_TOKEN not set" but I only want TypeScript**: Use `-ts` flag to skip Python:
  ```bash
  ./publish-sdk.sh -ts
  ```
- **Python Permission Denied**: If you see `[Errno 13] Permission denied` when installing `catapa-python`, it's because you're trying to install globally. Use a virtual environment:

  1. Install uv if not already installed (see [Official Documentation](https://docs.astral.sh/uv/getting-started/installation/))

  2. Navigate to the `python/catapa-python` directory

  ```bash
  cd ../../python/catapa-python
  ```

  3. Create a virtual environment

  ```bash
  uv venv
  ```

  4. Activate the virtual environment

  ```bash
  # Linux/macOS
  source .venv/bin/activate

  # Windows
  .venv\Scripts\activate
  ```

  5. Install the package in editable mode

  ```bash
  uv sync --extra dev
  ```

  6. Test the updated client

  ```bash
  uv run examples/example.py
  ```

## 🎨 Template Customization

You can customize the generated SDK code by modifying OpenAPI Generator templates.

### Getting Started

1. **Extract templates** you want to customize:

   You can add your custom templates to the `python-templates/` directory. Please see the default on the [Official Repository](https://github.com/OpenAPITools/openapi-generator/tree/master/modules/openapi-generator/src/main/resources/python) for more details.

2. **Customize** the template files

3. **Regenerate** the SDK:
   ```bash
   ./regenerate-client.sh -py
   ```

The regeneration script will automatically use custom templates from `python-templates/` or `typescript-templates/` if they exist.

### Documentation

- **[TEMPLATE_CUSTOMIZATION_GUIDE.md](./TEMPLATE_CUSTOMIZATION_GUIDE.md)** - Complete guide with examples
