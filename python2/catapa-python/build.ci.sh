#!/bin/bash
set -uo pipefail  # Exit on undefined variables and pipe failures

# Script: build.ci.sh
# Purpose: CI script for building Catapa SDK
# This script runs the SDK regeneration, linting, and testing process for CI/CD environments

echo "━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━"
echo "🚀 Starting Catapa SDK CI Build"
echo "━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━"

# Set default parameters based on user requirements
SPEC_URL="https://developer.catapa.com/openapi-dist.yaml"
GENERATE_PYTHON=true

# Initialize status variables
DEPENDENCIES_INSTALLED=false
LINTING_PASSED=false
SDK_GENERATED=false
TESTS_PASSED=false

echo "📥 Using OpenAPI spec from: $SPEC_URL"
echo "📦 Generating: Python SDK"

# Check if we're in the correct directory
SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
cd "$SCRIPT_DIR"
# Navigate to scripts/sdk to access regenerate-client.sh
cd ../../scripts/sdk

# Check for required tools
echo "🔍 Checking required tools..."
if ! command -v curl &> /dev/null; then
    echo "❌ Error: curl is not installed"
    exit 1
fi

if ! command -v python3 &> /dev/null; then
    echo "❌ Error: python3 is not installed"
    exit 1
fi

if ! command -v node &> /dev/null; then
    echo "❌ Error: node is not installed"
    exit 1
fi

if ! command -v npx &> /dev/null; then
    echo "❌ Error: npx is not installed"
    exit 1
fi

if ! command -v uv &> /dev/null; then
    echo "❌ Error: uv is not installed"
    exit 1
fi

echo "✅ All required tools available"

# Install dependencies from pyproject.toml
echo ""
echo "━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━"
echo "📦 Installing Dependencies from pyproject.toml"
echo "━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━"

# Navigate to python/catapa-python directory and install dependencies
cd ../../python/catapa-python
if uv sync && uv pip install -e ".[dev]"; then
    echo "✅ Dependencies installed successfully"
    DEPENDENCIES_INSTALLED=true
else
    echo "❌ Error: Failed to install dependencies"
    exit 1
fi

echo ""
echo "━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━"
echo "🧹 Running Linting (ruff)"
echo "━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━"

# Create necessary directories for build artifacts
mkdir -p build/reports/tests

# Run ruff check
if uv run ruff check catapa_python/ tests/; then
    echo "✅ Ruff linting passed"
    LINTING_PASSED=true
else
    echo "⚠️  Ruff found issues"
    LINTING_PASSED=false
fi

# Navigate to scripts/sdk for regenerate-client.sh
# From python/catapa-python, go up two levels then into scripts/sdk
cd ../../scripts/sdk

# Run the regenerate-client.sh script with required parameters
echo ""
echo "🔄 Running SDK regeneration..."
echo "📝 Command: ./regenerate-client.sh --url \"$SPEC_URL\" --python"

if ./regenerate-client.sh --url "$SPEC_URL" --python; then
    echo ""
    echo "━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━"
    echo "✅ SDK Regeneration Completed Successfully!"
    echo "━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━"
    
    SDK_GENERATED=true
    
    # Navigate back to python/catapa-python directory for testing
    # From scripts/sdk, go up to root then into python/catapa-python
    cd ../../python/catapa-python
    
    # Verify the generated files
    echo ""
    echo "🔍 Verifying generated files..."
    
    # Check Python SDK generation
    PYTHON_GEN_PATH="catapa_python/generated"
    if [ -d "$PYTHON_GEN_PATH" ] && [ "$(ls -A "$PYTHON_GEN_PATH" 2>/dev/null | wc -l)" -gt 0 ]; then
        echo "✅ Python SDK generated at: $PYTHON_GEN_PATH"
        echo "   Files count: $(find "$PYTHON_GEN_PATH" -type f -name "*.py" | wc -l) Python files"
    else
        echo "⚠️  Warning: Python SDK generation directory is empty or not found"
    fi
    
    echo ""
    echo "━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━"
    echo "🧪 Running Tests (pytest)"
    echo "━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━"
    
    # Create directory for coverage report
    rm -rf build/reports
    mkdir -p build/reports
    
    # Run pytest with coverage
    # Coverage report will be generated at build/reports/coverage.xml for Sonarqube
    # Use set +e to continue even if tests fail (to ensure coverage report is always generated)
    set +e
    # IMPORTANT for SonarQube integration:
    # - Use "." as the coverage target so coverage.py + relative_files emit paths
    #   relative to python/catapa-python (the sonar.projectBaseDir), e.g.
    #   "catapa_python/catapa/auto_refresh_api_client.py".
    uv run pytest tests/ \
        --cov=. \
        --cov-report=xml:build/reports/coverage.xml \
        --cov-report=term
    TEST_EXIT_CODE=$?
    set -e
    
    if [ $TEST_EXIT_CODE -eq 0 ]; then
        echo "✅ Tests passed"
        TESTS_PASSED=true
    else
        echo "⚠️  Some tests failed (exit code: $TEST_EXIT_CODE)"
        TESTS_PASSED=false
    fi
    
    # Check if coverage report was generated
    if [ -f build/reports/coverage.xml ]; then
        echo "✅ Coverage report generated at build/reports/coverage.xml"
    else
        echo "⚠️  Warning: Coverage report not found at build/reports/coverage.xml"
    fi
    
    echo ""
    echo "━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━"
    echo "📋 Build Summary:"
    echo "━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━"
    
    # Dependency status
    if [ "$DEPENDENCIES_INSTALLED" = true ]; then
        echo "   • Dependencies: ✓"
    else
        echo "   • Dependencies: ✗"
    fi
    
    # Linting status
    if [ "$LINTING_PASSED" = true ]; then
        echo "   • Linting: Ruff ✓"
    else
        echo "   • Linting: Ruff ✗ (issues found)"
    fi
    
    # OpenAPI status
    echo "   • OpenAPI Spec: Downloaded from $SPEC_URL ✓"
    
    # SDK generation status
    if [ "$SDK_GENERATED" = true ]; then
        echo "   • SDK Generated: Python ✓"
    else
        echo "   • SDK Generated: Python ✗"
    fi
    
    # Tests status
    if [ "$TESTS_PASSED" = true ]; then
        echo "   • Tests: pytest with coverage ✓"
    else
        echo "   • Tests: pytest with coverage ✗ (failures)"
    fi
    
    # Coverage report
    echo "   • Coverage Report: build/reports/coverage.xml"
    
    # Overall status
    if [ "$DEPENDENCIES_INSTALLED" = true ] && \
       [ "$LINTING_PASSED" = true ] && \
       [ "$SDK_GENERATED" = true ] && \
       [ "$TESTS_PASSED" = true ]; then
        echo "   • Overall Status: SUCCESS ✓"
        echo ""
        echo "✅ SDK CI Build Completed Successfully!"
    else
        echo "   • Overall Status: FAILED ✗"
        echo ""
        echo "❌ SDK CI Build Failed"
        echo "   Some steps did not complete successfully. See above for details."
        exit 1
    fi
    
else
    echo ""
    echo "━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━"
    echo "❌ SDK CI Build Failed!"
    echo "━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━"
    echo "Check the error messages above for details."
    exit 1
fi

echo ""
echo "━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━"
echo "🏁 Catapa SDK CI Build Complete"
echo "━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━"
