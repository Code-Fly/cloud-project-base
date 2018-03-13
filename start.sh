#!/usr/bin/env bash

nohup java -jar ./eureka-server-0.0.1-SNAPSHOT.jar --eureka.instance.ip-address=116.62.65.114 --eureka.client.serviceUrl.defaultZone=http://www.shanzhaiaqua.com:7000/eureka/ --logging.file=./logs/eureka-server.log >/dev/null 2>&1 &
nohup java -jar ./config-server-0.0.1-SNAPSHOT.jar --eureka.instance.ip-address=116.62.65.114 --eureka.client.serviceUrl.defaultZone=http://www.shanzhaiaqua.com:7000/eureka/ --logging.file=./logs/config-server.log  >/dev/null 2>&1 &
nohup java -jar ./zuul-gateway-0.0.1-SNAPSHOT.jar --eureka.instance.ip-address=116.62.65.114 --eureka.client.serviceUrl.defaultZone=http://www.shanzhaiaqua.com:7000/eureka/ --logging.file=./logs/zuul-gateway.log >/dev/null 2>&1 &