# First stage: Build the application
FROM maven:3.8.8-openjdk-17-slim AS build
LABEL authors="kg474"

WORKDIR /app

COPY pom.xml .
COPY src ./src

RUN mvn clean package -DskipTests

# Second stage: Create final lightweight image
FROM openjdk:17-jdk-alpine
WORKDIR /app

COPY --from=build /app/target/food-order-back-0.0.1-SNAPSHOT.jar app.jar

EXPOSE 8080

ENTRYPOINT ["java", "-jar", "app.jar"]
