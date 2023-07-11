#!/bin/bash

# Check that OS is based on Ubuntu 22.04
# If it is true, then install dependencies.
OS=$(lsb_release -a | grep -o "jammy")

check_os_and_install () {
    if [ "$OS" == "jammy" ]; then
        echo "This OS is based on Ubuntu 22.04 Jammy Jellyfish" && \
            sudo apt update && \
            sudo apt install -y \
                git curl uidmap gnupg openssl && \
            curl -fsSL get.docker.com -o get-docker.sh && \
            CHANNEL=stable bash get-docker.sh && \
            rm get-docker.sh
    else
        echo "This OS is not based on Ubuntu 22.04 Jammy Jellyfish. This script is only tested on it." 
        return 1
    fi
}

# Just clones the project.
clone_project () {
    git clone https://github.com/cagriefegunay/pognd 
}

# Add allowed hosts in settings.py to connect with IP or localhost
allowed_hosts () {
    echo -n "ALLOWED_HOSTS = [\"127.0.0.1\", \"0.0.0.0\",\"localhost\", \"django\", \"$(curl -s ifconfig.io)\"]" >> ./pognd/PyEditorial/settings.py
}

# Create and start containers
docker_up () {
    cd ./pognd && sudo docker compose up -d
}

# Run functions
check_os_and_install && \
    clone_project && \
    allowed_hosts && \
    docker_up