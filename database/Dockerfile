FROM mysql
USER root
WORKDIR /
ENV MYSQL_ROOT_PASSWORD="abc"
ADD idp_database.sql /
RUN /etc/init.d/mysql start && mysql -u root --password="abc" < /idp_database.sql

