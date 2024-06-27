# Use the official OpenJDK 8 image as a base image
FROM openjdk:17-jdk-slim

# Set the working directory inside the container
WORKDIR /app

# Copy the jar file into the container
ADD target/HW-SPRINGBOOT-DOCKER-0.0.1-SNAPSHOT.jar /app/HW-SPRINGBOOT-DOCKER-0.0.1-SNAPSHOT.jar

# Expose the port that your application runs on
EXPOSE 8080

# Command to run the jar file
ENTRYPOINT ["java", "-jar", "/app/HW-SPRINGBOOT-DOCKER-0.0.1-SNAPSHOT.jar"]