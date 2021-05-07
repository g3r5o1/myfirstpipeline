FROM python:3-alpine

WORKDIR /myfirstpipeline

ADD . /myfirstpipeline

#RUN  apk add python3-venv

RUN  pip install --requirement ./requirements.txt

CMD  [ "python", "source venv/bin/activate" | "flake8 --exclude=venv* --statistics", "pytest -v" ]


