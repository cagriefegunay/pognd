# pognd

## Table of Content
- [About](#about)
- [Architecture](#architecture)
- [Installation \& Setup](#installation--setup)
  - [Prerequisites](#prerequisites)
  - [Instructions](#instructions)
  - [Automated Installation With Script For Ubuntu 22.04](#automated-installation-with-script-for-ubuntu-2204)
- [References \& Credits](#references--credits)
- [License](#license)


## About

**pognd** is a stack for development with **Po**stgreSQL + **G**unicorn + **N**ginx + **D**jango via Docker containers.

For testing and development purposes, [PyEditorial](https://github.com/mavenium/PyEditorial) (a free and open-source blog CMS) by [mavenium](https://github.com/mavenium) is used in this stack.

> **Warning**
> This stack and scripts are prepared **for only development servers** by ignoring some security practices.  
> DO NOT USE IT ON PRODUCTION.

> **Note**
> [setup.sh](./setup.sh) script is tested on Ubuntu 22.04, some dependencies and progresses may be differ on other GNU/Linux distros. 

## Architecture

![Diagram of Architecture](./diagram.png)

## Installation & Setup

### Prerequisites

* [Git](https://git-scm.com/downloads)
* [Docker](https://docs.docker.com/engine/install/)

### Instructions

1. On your Terminal:
    ```bash
    git clone https://github.com/cagriefegunay/pognd.git
    cd pognd

    # For Windows & Mac
    docker compose up -d 

    # For Linux
    sudo docker compose up -d
    ```
2. After the containers up and running, check out https://localhost in your browser. 
   * Since it is self-signed, you may meet an error about the site is not secure. 
   * On Chromium-based browsers, click on **Advanced** on the bottom left side. Then, click on **Proceed to localhost(unsafe)**.
   * For Firefox-based browsers, click on **Advanced...** on the bottom right side. Then, click on **Accept the Risk and Continue**.

### Automated Installation With Script For Ubuntu 22.04 

**If you are running a new minimally installed Ubuntu 22.04 Server** on cloud or local environment, some important packages may be missing for this project (like git, curl, etc.). Therefore, you can use [setup.sh](https://github.com/cagriefegunay/pognd/blob/main/setup.sh) script in this repo:

1. Copy the code in [setup.sh](./setup.sh)
2. Create a file on Terminal/TTY (`touch setup.sh`) 
3. Open the file and paste the code in `setup.sh` via Vim, Nano or your favourite text editor. Then save & exit.
4. Make it executable (`chmod +x setup.sh`)
5. Start (`./setup.sh` or `bash setup.sh`)

The script will install all dependencies for the project and make the containers up and running. Also, it serves the the project with public IP of your server.

> The script assumes that you have root privileges for user.
> 
> It is recommended that you should read and understand the script before running it.

## References & Credits

- [PyEditorial](https://github.com/mavenium/PyEditorial) Project by [Mahdi Namaki - mavenium](https://github.com/mavenium)
- [Deploying Django with Docker Compose, Gunicorn and Nginx](https://www.youtube.com/watch?v=vJAfq6Ku4cI) by [Django road on YouTube](https://www.youtube.com/@djangoroad)
- [Django, Docker, and PostgreSQL Tutorial](https://learndjango.com/tutorials/django-docker-and-postgresql-tutorial) by [LearnDjango](https://learndjango.com)
- [Dockerizing Django with Postgres, Gunicorn, and Nginx](https://testdriven.io/blog/dockerizing-django-with-postgres-gunicorn-and-nginx/) by [Michael Herman on testdriven.io](https://testdriven.io/authors/herman/)
- [What is WSGI and Why Do You Need Gunicorn and Nginx in Django
](https://www.youtube.com/watch?v=Gkpg4MxhPUg) by [Denis Orehovsky on YouTube](https://www.youtube.com/@denisorehovsky)
- [Configure SSL for Docker](https://help.kendis.io/en/articles/3382550-configure-ssl-for-docker) by [Kendis](https://help.kendis.io/en/)
- [Waiting for PostgreSQL to start in Docker Compose](https://laurent-bel.medium.com/waiting-for-postgresql-to-start-in-docker-compose-c72271b3c74a) by [Laurent Bel](https://laurent-bel.medium.com/waiting-for-postgresql-to-start-in-docker-compose-c72271b3c74a)

## License

This program is free software and licensed under GNU General Public License version 3. 