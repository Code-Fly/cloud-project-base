#!/usr/bin/env bash

nohup java -jar ./eureka-server-0.0.1-SNAPSHOT.jar --eureka.instance.ip-address=116.62.65.114  --logging.file=./log/eureka-server.log &
nohup java -jar ./config-server-0.0.1-SNAPSHOT.jar --eureka.instance.ip-address=116.62.65.114 --logging.file=./log/config-server.log  &
nohup java -jar ./zuul-gateway-0.0.1-SNAPSHOT.jar --eureka.instance.ip-address=116.62.65.114 --logging.file=./log/zuul-gateway.log &