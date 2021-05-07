FROM ubuntu:16.04

WORKDIR /myfirstpipeline

ADD . /myfirstpipeline

#RUN  apk add python3-venv

RUN  apt-get update && apt-get upgrade

#RUN  apt-get source requirements.txt

RUN  apt-get -y install python3

RUN  apt-get -y install python3-venv

RUN  python3 -m venv venv | source venv/bin/activate | flake8 --exclude=venv* --statistics | pytest -v

CMD  [ "source venv/bin/activate" | "flake8 --exclude=venv* --statistics", "pytest -v" ]


