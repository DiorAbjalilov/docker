#bu mening dockerfile'im

FROM debian:buster-slim

RUN apt-get update \
    && apt-get install -y nginx

COPY ./index.html /var/www/html

CMD nginx -g 'daemon off;'


# syntax=docker/dockerfile:1
# FROM ubuntu:22.04
# COPY . /app
# RUN make /app
# CMD python /app/app.py

