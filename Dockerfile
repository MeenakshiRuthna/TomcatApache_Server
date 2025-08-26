# Use OpenJDK 8 as base image
FROM openjdk:8

# Set working directory inside the container
WORKDIR /app

# Expose application port
EXPOSE 8082

# Copy the JAR file into the container
ADD target/*.jar app.jar

# Run the JAR file
ENTRYPOINT ["java", "-jar", "app.jar"]
