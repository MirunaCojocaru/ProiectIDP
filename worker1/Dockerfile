FROM python:3
USER root
WORKDIR /

RUN pip3 install mysql-connector
ADD worker1.py /
CMD [ "python3", "./worker1.py" ]


