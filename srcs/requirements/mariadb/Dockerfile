FROM debian:bookworm-backports
RUN apt update -y
RUN apt install -y  mariadb-server 


COPY ./conf/50-server.cnf /etc/mysql/mariadb.conf.d/
COPY ./tools/script.sh /

RUN chmod 777 /script.sh

RUN chown -R mysql:mysql /var/lib/mysql

ENTRYPOINT ["/script.sh"]
CMD ["mysqld", "--user=mysql"]
#CMD ["mariadb", "--user=mysql"]

# CMD ["service", "mariadb","start"]

#CMD ["bash", "script2.sh"]
#CMD ["mysqld_safe", "--user=mysql"]

#CMD ["mysql", "<",  "/var/www/initial_db.sql"]
