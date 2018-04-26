#Dockerfile
FROM alpine:3.7

RUN apk add python py-pip --no-cache && pip install -U pip
COPY app/requirements.txt /
RUN pip install -r /requirements.txt

RUN adduser -S tethys
USER tethys

COPY app/tethys /
