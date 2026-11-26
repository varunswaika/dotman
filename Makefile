.PHONY: check lint

check:
	python3 dotman.py validate
	python3 -m unittest discover -s tests

lint:
	ruff check .
	ruff format --check .
