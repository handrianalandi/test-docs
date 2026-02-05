.PHONY: ensure-venv install regenerate-client run-example test venv

# Variable to store venv activation command (reused across targets)
VENV_ACTIVATE = if [ -d ".venv" ]; then source .venv/bin/activate; elif [ -d "venv" ]; then source venv/bin/activate; fi

# Variable to sync dev dependencies
SYNC_DEV = uv sync --extra dev

# Target to ensure venv exists (reused by other targets)
ensure-venv:
	@bash -c 'if [ ! -d ".venv" ] && [ ! -d "venv" ]; then \
		echo "Creating virtual environment with uv..."; \
		uv venv; \
	fi'

# Create and activate virtual environment
venv: ensure-venv
	@bash -c 'if [ -d ".venv" ]; then \
		echo "Activating .venv..."; \
		source .venv/bin/activate && exec $$SHELL; \
	elif [ -d "venv" ]; then \
		echo "Activating venv..."; \
		source venv/bin/activate && exec $$SHELL; \
	fi'

# Install package using uv
# This ensures the package (including openapi_client) is properly installed
install: ensure-venv
	@bash -c '$(VENV_ACTIVATE) && uv pip uninstall catapa-python 2>/dev/null || true && uv pip install -e . && uv sync --extra dev'

# Regenerate Python client from OpenAPI spec
# Note: This will also reinstall the package to pick up the new generated code
regenerate-client: ensure-venv
	@cd ../../scripts/sdk/generate && uv sync && uv run main.py py
	@bash -c '$(VENV_ACTIVATE) && echo "Reinstalling package to pick up generated code..." && uv pip uninstall catapa-python 2>/dev/null || true && uv pip install -e .'

# Run unit tests only
# Note: Make sure to run 'make regenerate-client' first to generate the OpenAPI client code
test: ensure-venv
	@bash -c '$(VENV_ACTIVATE) && $(SYNC_DEV) && coverage run -m pytest tests/ && coverage report -m && coverage html'

# Run example script
run-example: ensure-venv
	@bash -c '$(VENV_ACTIVATE) && $(SYNC_DEV) && uv run examples/example.py'
