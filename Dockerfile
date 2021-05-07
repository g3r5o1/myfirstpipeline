FROM alpine:3.12

WORKDIR /myfirstpipeline

ADD . /myfirstpipeline

RUN apk add python3

RUN source venv/bin/activate | pip install -r requirements.txt

RUN source venv/bin/activate | flake8 --exclude=venv* --statistics | pytest -v


