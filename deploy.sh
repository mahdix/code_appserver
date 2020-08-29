#!/bin/bash

./mvnw package -Dmaven.test.skip=true
cp target/spring-boot-0.0.1-SNAPSHOT.jar ~/appserver.jar
sudo systemctl restart appserver
sudo journalctl -f -u appserver.service
