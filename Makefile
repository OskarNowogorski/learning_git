.PHONY: deps test

deps:
	pip install -r requirements.txt; \
		pip install -r test_requirements.txt

run:
PYTHONPATH=. FLASK_APP=hello_world flask run

test:
PYTHONPATH=. py.test  --verbose -s --cov=hello_world --cov-report=xml

lint:
flake8 hello_world test main.py

