FROM python:3
USER root
WORKDIR /
ADD worker1.py /
RUN pip3 install mysql
CMD [ "python3", "./worker1.py", "mysql_container" ]

