FROM ubuntu:latest

WORKDIR /myfirstpipeline

ADD . /myfirstpipeline

RUN sudo apt-get install python3-venv

RUN source venv/bin/activate | pip install -r requirements.txt

RUN source venv/bin/activate | flake8 --exclude=venv* --statistics | pytest -v


