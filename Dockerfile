FROM ubuntu:latest

WORKDIR /myfirstpipeline

ADD . /myfirstpipeline

#RUN apt-get install python3

RUN pip install -r requirements.txt

RUN flake8 --exclude=venv* --statistics | pytest -v


