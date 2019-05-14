#!/bin/bash

sudo docker-compose pull
sudo docker-compose run -d --name mysql_container -e MYSQL_ROOT_PASSWORD=abcd mysql_container &
sudo docker-compose run -T --name worker1 worker1 &
sudo docker-compose run -T --name worker2 worker2 &
