FROM jinjat/jinjat:latest

RUN apt update -qq && \
    apt install -y build-essential curl git wget gcc
RUN pip install dbt-duckdb

COPY . /project

ENV DBT_PROJECT_DIR=/project
ENV DBT_PROJECT_DIR=/project

ENTRYPOINT ["poetry", "run", "jinjat", "serve" ]