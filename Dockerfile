# Use a minimal Java base image
FROM openjdk:8-jre-slim

# Create a directory for the application
RUN mkdir /app

# Copy the WAR file to the container
COPY /home/ubuntu/jpetstore-6.1.0.war /app/app.war

# Command to run the application
CMD ["java", "-jar", "/app/app.war"]

