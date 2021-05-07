FROM python:3-alpine

WORKDIR /myfirstpipeline

ADD . /myfirstpipeline

#RUN  apk add python3-venv

RUN  sudo pip install --requirement ./requirements.txt

CMD  [ "python", "flake8 --exclude=venv* --statistics", "pytest -v" ]


