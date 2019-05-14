FROM python:3
USER root
WORKDIR /
ADD worker2.py /
RUN pip3 install mysql
CMD [ "python3", "./worker2.py", "mysql_container" ]

