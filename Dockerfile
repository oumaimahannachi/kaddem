# Use the official OpenJDK image as the base image for Spring Boot
FROM openjdk:latest

# Set the working directory within the container
WORKDIR /app



# Copy the packaged Spring Boot jar (assuming it's in the target directory)
COPY target/khaddem-4.0.jar .

# Expose the port on which your Spring Boot app runs
EXPOSE 8080

# Define the command to start your Spring Boot application
CMD ["java", "-jar", "khaddem-4.0.jar"]
