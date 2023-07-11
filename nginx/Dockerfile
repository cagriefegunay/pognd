# Base image
FROM ubuntu:22.04

RUN apt update && \
    apt install -y nginx openssl

# Copy configs
WORKDIR /etc/nginx/conf.d
COPY ./default.conf .

RUN openssl req -subj '/CN=localhost' -x509 -newkey rsa:4096 -nodes -keyout key.pem -out cert.pem -days 365
EXPOSE 80 443

CMD ["nginx", "-g", "daemon off;"]