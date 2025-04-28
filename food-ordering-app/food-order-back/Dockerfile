# --------- Stage 1: Build ---------
FROM maven:3.9.4-eclipse-temurin-17 AS build

# Set working directory
WORKDIR /app

# Copy pom.xml and download dependencies first (for better caching)
COPY pom.xml .
COPY .mvn .mvn
COPY mvnw .
RUN ./mvnw dependency:go-offline

# Copy the entire project
COPY src src

# Package the application
RUN ./mvnw clean package -DskipTests

# --------- Stage 2: Run ---------
FROM openjdk:17-jdk-slim

# Set working directory
WORKDIR /app

# Copy the packaged jar file from the build stage
COPY --from=build /app/target/food-order-back-0.0.1-SNAPSHOT.jar app.jar

# Expose the port your Spring Boot app runs on
EXPOSE 8080

# Run the jar file
ENTRYPOINT ["java", "-jar", "app.jar"]
