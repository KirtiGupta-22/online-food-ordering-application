# First stage: Build the application
FROM maven:3.9.6-eclipse-temurin-17 AS build
LABEL authors="kg474"

WORKDIR /app

# Copy the necessary files to build the app
COPY food-order-back/pom.xml .
COPY food-order-back/src ./src

# Build the application, skipping tests
RUN mvn clean package -DskipTests

# Second stage: Create final lightweight image
FROM openjdk:17-jdk-alpine
WORKDIR /app

# Copy the JAR from the build stage
COPY --from=build /app/target/food-order-back-0.0.1-SNAPSHOT.jar app.jar

# Expose the application port
EXPOSE 8080

# Start the application
ENTRYPOINT ["java", "-jar", "app.jar"]