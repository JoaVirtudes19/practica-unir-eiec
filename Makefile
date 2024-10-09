.PHONY: all $(MAKECMDGOALS)

run:
	docker run --rm --volume `pwd`:/opt/app --env PYTHON_PATH=/opt/app -w /opt/app python:3.6-slim python3 main.py palabras.txt yes yes

run_without_docker:
	python3 main.py palabras.txt yes yes

