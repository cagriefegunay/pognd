# Base image
FROM ubuntu:22.04

# PIP_DISABLE_PIP_VERSION_CHECK=1 disables an automatic check for pip updates each time
# PYTHONDONTWRITEBYTECODE=1 means Python will not try to write .pyc files
# PYTHONUNBUFFERED=1 ensures our console output is not buffered by Docker
ENV PIP_DISABLE_PIP_VERSION_CHECK=1
ENV PYTHONDONTWRITEBYTECODE=1
ENV PYTHONUNBUFFERED=1

# Update the package lists and install Python3 and pip
RUN export DEBIAN_FRONTEND=noninteractive && \
    apt update && \
    apt install -y python-is-python3 python3-pip

# Change working directory on the container
WORKDIR /code

# Copy local codes
COPY . .

# Install requirements for the PyEditorial
RUN pip install -r requirements.txt