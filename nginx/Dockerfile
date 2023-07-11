# Base image
FROM ubuntu:22.04

# Env variable for auto approves and not meeting input screens
RUN DEBIAN_FRONTEND=noninteractive apt update && \
    DEBIAN_FRONTEND=noninteractive apt install -y nginx openssl

# Copy configs
WORKDIR /etc/nginx/conf.d
COPY ./default.conf .

# Create self-signed certs for nginx
RUN openssl req -subj '/CN=localhost' -x509 -newkey rsa:4096 -nodes -keyout key.pem -out cert.pem -days 365

# Expose ports for http and https
EXPOSE 80 443

# Start nginx when container is up
CMD ["nginx", "-g", "daemon off;"]