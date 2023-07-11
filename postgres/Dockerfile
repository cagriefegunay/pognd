# Base image
FROM ubuntu:22.04

# Env variable for auto approves and not meeting input screens 
ENV DEBIAN_FRONTEND=noninteractive

# Update the package lists and install PostgreSQL
RUN apt update && apt install -y postgresql postgresql-contrib

# Alter "postgresql" user with password for connection of Django
RUN service postgresql start && \
    su - postgres -c "psql -c 'ALTER USER postgres WITH PASSWORD '\''postgres'\'';'" && \
    su - postgres -c "psql -c 'CREATE USER root WITH PASSWORD '\''postgres'\'';'"

# Allow remote connections to PostgreSQL
RUN echo "host all all 0.0.0.0/0 md5" >> /etc/postgresql/14/main/pg_hba.conf
RUN echo "listen_addresses='*'" >> /etc/postgresql/14/main/postgresql.conf

# Expose default PostgreSQL port
EXPOSE 5432

# Start PostgreSQL server on container startup
CMD service postgresql start && tail -f /var/log/postgresql/postgresql-14-main.log