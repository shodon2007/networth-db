FROM mariadb:11.4.2

COPY ./data /var/lib/mysql
COPY ./initdb /docker-entrypoint-initdb.d
ENV MARIADB_ROOT_PASSWORD=