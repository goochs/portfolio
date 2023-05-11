VENV_DIR := ./venv
SYSTEM_PYTHON := $(shell which python3)

init:
	@if [ ! -d "$(VENV_DIR)" ]; then \
		echo "Setting up ..."; \
		$(SYSTEM_PYTHON) -m venv $(VENV_DIR); \
		$(VENV_DIR)/bin/python3 -m pip install -q --upgrade pip; \
		$(VENV_DIR)/bin/pip3 install -q -r requirements.txt; \
	fi
	@echo "Venv setup completed"

clean:
	@rm -rf $(VENV_DIR)
	@echo "Venv removed!"