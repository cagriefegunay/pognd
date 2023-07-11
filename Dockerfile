FROM ubuntu:22.04

RUN DEBIAN_FRONTEND=noninteractive apt update && \
    DEBIAN_FRONTEND=noninteractive apt install -y python-is-python3 python3-pip

WORKDIR /code

COPY . .

RUN pip install -r requirements.txt