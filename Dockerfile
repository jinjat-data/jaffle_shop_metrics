FROM jinjat/jinjat:latest

RUN apt update -qq && \
    apt install -y build-essential curl git wget gcc
RUN pip install dbt-duckdb

COPY . /project

ENV DBT_PROJECT_DIR=/project
ENV DBT_PROJECT_DIR=/project
ENV JINJAT_HOST=0.0.0.0
ENV JINJAT_PORT=8080

ENTRYPOINT ["poetry", "run", "jinjat", "serve"]