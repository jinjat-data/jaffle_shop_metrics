FROM jinjat/jinjat:latest

RUN apt update -qq && \
    apt install -y build-essential curl git wget gcc
RUN poetry add dbt-duckdb@^1.5.0 && poetry install

RUN poetry run dbt deps && poetry run dbt seed && poetry run dbt compile

COPY . /project

ENV DBT_PROJECT_DIR=/project
ENV DBT_PROJECT_DIR=/project

ENTRYPOINT ["poetry", "run", "jinjat", "serve"]