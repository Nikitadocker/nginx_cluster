# FROM python:3
# COPY ./requirements.txt /requirements.txt
# WORKDIR /
# RUN pip install -r requirements.txt
# COPY . /
FROM python:3.8-slim-buster

WORKDIR /python-docker

COPY requirements.txt requirements.txt
RUN pip3 install -r requirements.txt

COPY . .

CMD [ "python3", "app1.py"]