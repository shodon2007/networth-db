FROM mariadb:11.4.2

COPY ./initdb /docker-entrypoint-initdb.d