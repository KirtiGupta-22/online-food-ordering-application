# Use Maven to build the project
FROM maven:3.9.6-eclipse-temurin-17 as builder

# Set working directory
WORKDIR /app

# Copy backend pom.xml and src
COPY food-order-back/pom.xml .
COPY food-order-back/src ./src
COPY food-order-back/image-meals ./image-meals
COPY food-order-back/.mvn ./.mvn
COPY food-order-back/mvnw ./mvnw

# Build the application
RUN ./mvnw clean package -DskipTests

# Use a lightweight JDK image to run
FROM openjdk:17-jdk-slim

# Set working directory
WORKDIR /app

# Copy the built jar file
COPY --from=builder /app/target/*.jar app.jar

# Expose the port (you can change this if needed)
EXPOSE 8080

# Run the application
ENTRYPOINT ["java", "-jar", "app.jar"]
