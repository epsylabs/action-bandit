FROM python:3.9-alpine

WORKDIR /app

RUN pip install bandit requests==2.25.1 bandit_sarif_formatter

COPY entrypoint.sh /entrypoint.sh
ENTRYPOINT ["/entrypoint.sh"]