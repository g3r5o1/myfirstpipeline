FROM ubuntu:20.04

WORKDIR /myfirstpipeline

ADD . /myfirstpipeline

#RUN  apk add python3-venv

RUN  sudo apt-get install python3-venv

#CMD  [ "python3 -m venv", "source venv/bin/activate" | "flake8 --exclude=venv* --statistics", "pytest -v" ]


