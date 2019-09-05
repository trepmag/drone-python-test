FROM python:3-slim-stretch

ENV PYTHONUNBUFFERED 1
ENV PYTHONDONTWRITEBYTECODE 1

WORKDIR /app

COPY ./requirements.txt /tmp/

RUN pip install --upgrade pip \
  && pip install -r /tmp/requirements.txt
