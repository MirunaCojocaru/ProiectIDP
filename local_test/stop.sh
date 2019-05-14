#!/bin/bash

sudo docker kill $(sudo docker ps -q)
sudo docker rm $(sudo docker ps -a -q)
sudo docker rmi localtest_worker2
sudo docker rmi localtest_worker1
sudo docker rmi localtest_mysql_container
