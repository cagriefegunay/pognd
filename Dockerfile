# Base image
FROM python:3.9

# Environment variables

# PIP_DISABLE_PIP_VERSION_CHECK disables an automatic check for pip updates each time
# PYTHONDONTWRITEBYTECODE means Python will not try to write .pyc files
# PYTHONUNBUFFERED ensures our console output is not buffered by Docker
ENV PIP_DISABLE_PIP_VERSION_CHECK 1
ENV PYTHONDONTWRITEBYTECODE 1
ENV PYTHONUNBUFFERED 1

# Working directory
WORKDIR /code

# Copy files to container and install requirements
COPY . .
RUN pip install -r requirements.txt