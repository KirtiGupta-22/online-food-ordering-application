#FROM ubuntu:latest

FROM openjdk:17-jdk-alpine
LABEL authors="kg474"

WORKDIR /app

COPY target/food-order-back-0.0.1-SNAPSHOT.jar .

EXPOSE 8080

ENTRYPOINT ["java", "-jar", "food-order-back-0.0.1-SNAPSHOT.jar"]
