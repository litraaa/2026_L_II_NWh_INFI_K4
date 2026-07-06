deps:
	pip install -r requirements.txt
	pip install -r test_requirements.txt

lint:
	flake8 hello_world test

.PHONY: test
test:
	export PYTHONPATH=.; pytest

run:
	export PYTHONPATH=.; export FLASK_APP=hello_world; flask run


