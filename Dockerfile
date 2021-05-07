FROM ubuntu:16.04

WORKDIR /myfirstpipeline

ADD . /myfirstpipeline

#RUN  apk add python3-venv

RUN  apt-get update && apt-get install python3

CMD  [ "python3 -m venv", "source venv/bin/activate" | "flake8 --exclude=venv* --statistics", "pytest -v" ]


