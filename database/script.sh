#!/bin/bash
sudo docker build -t msql .
sudo docker run -d -p 3307:3306 --name msql -e MYSQL_ROOT_PASSWORD=abcd msql
sudo docker exec -it msql /bin/bash
