FROM ubuntu:latest

WORKDIR /myfirstpipeline

ADD . /myfirstpipeline

RUN apk add python3

