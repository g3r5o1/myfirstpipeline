FROM ubuntu:16.04

WORKDIR /myfirstpipeline

ADD . /myfirstpipeline

#RUN  apk add python3-venv

RUN  apt-get update && apt-get upgrade

#RUN  apt-get source requirements.txt

RUN  /bin/sh -c apt-get install python3

RUN  python3 -m venv venv

CMD  [ "source venv/bin/activate" | "flake8 --exclude=venv* --statistics", "pytest -v" ]


