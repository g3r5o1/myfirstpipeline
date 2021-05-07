FROM python:3-alpine

WORKDIR /myfirstpipeline

ADD . /myfirstpipeline

#RUN  apk add python3-venv

RUN  python3 -m pip install --requirement ./requirements.txt

CMD  [ "python3 -m venv", "source venv/bin/activate" | "flake8 --exclude=venv* --statistics", "pytest -v" ]


