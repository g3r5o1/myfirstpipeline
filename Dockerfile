FROM alpine:3.12

WORKDIR /myfirstpipeline

ADD . /myfirstpipeline

RUN apk add python3

RUN  pip install -r requirements.txt

RUN  flake8 --exclude=venv* --statistics | pytest -v


