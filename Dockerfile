FROM ubuntu:22.04

RUN apt update && \
    apt install -y python-is-python3 python3-pip

WORKDIR /code

COPY . .

RUN pip install -r requirements.txt