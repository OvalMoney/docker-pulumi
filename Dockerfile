FROM pulumi/pulumi-python:2.10.0

ARG PYTHON_POETRY_VERSION=1.0.10

RUN curl -sSL https://raw.githubusercontent.com/sdispater/poetry/master/get-poetry.py | \
    python - --version=${PYTHON_POETRY_VERSION} --yes

# Config poetry
ENV PATH "${PATH}:/root/.poetry/bin"
RUN poetry config virtualenvs.create false
