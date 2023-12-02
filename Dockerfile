# Use an OpenJDK runtime as a base image
FROM adoptopenjdk:11-jre

# Set the working directory in the container
WORKDIR /app

# Copy the JAR file into the container at /app
COPY target/spring-petclinic-rest-*.jar /app/spring-petclinic-rest.jar

# Expose the port that the application will run on
EXPOSE 8080

# Specify the command to run on container start
CMD ["java", "-jar", "spring-petclinic-rest.jar"]
