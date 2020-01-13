#!/bin/bash

echo "Performing a clean Maven build"
mvn clean package -DskipTests=true


echo "Building the flights service"
cd mock-flights-service
docker build --tag mock-flights-service .
cd ..

echo "Building the hotels service"
cd mock-hotels-service
docker build --tag mock-hotels-service .
cd ..

echo "Building spring cloud gateway"
cd travel-spring-cloud-gateway
docker build --tag travel-spring-gateway .
cd ..