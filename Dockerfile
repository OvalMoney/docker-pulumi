FROM pulumi/pulumi-python:2.12.0

ARG PYTHON_POETRY_VERSION=1.1.3

RUN apt-get update -y && apt-get install -y curl
RUN curl -sSL https://raw.githubusercontent.com/sdispater/poetry/master/get-poetry.py | \
    python - --version=${PYTHON_POETRY_VERSION} --yes

# Config poetry
ENV PATH "${PATH}:/root/.poetry/bin"
RUN poetry config virtualenvs.create false
