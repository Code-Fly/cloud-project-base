#!/usr/bin/env bash

nohup java -jar ./eureka-server-0.0.1-SNAPSHOT.jar --eureka.instance.ip-address=116.62.65.114  --logging.file=./logs/eureka-server.log >/dev/null 2>&1 &
nohup java -jar ./config-server-0.0.1-SNAPSHOT.jar --eureka.instance.ip-address=116.62.65.114 --logging.file=./logs/config-server.log  >/dev/null 2>&1 &
nohup java -jar ./zuul-gateway-0.0.1-SNAPSHOT.jar --eureka.instance.ip-address=116.62.65.114 --logging.file=./logs/zuul-gateway.log >/dev/null 2>&1 &