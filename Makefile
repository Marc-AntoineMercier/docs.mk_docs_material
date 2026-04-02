
.PHONY: help dep install i

help:
	@echo "Usage: make [target]"
	@echo "Targets:"
	@echo "  help       Show this help message"
	@echo "  dep        Install dependencies"
	@echo "  install    Install dependencies the application"
	@echo "  i          Install dependencies and the application"

dep:
	pip freeze > requirements.txt

install:
	pip install -r requirements.txt

i: dep install
