# Start with a base image containing Java runtime
FROM openjdk:17

# Make port 8086 available to the world outside this container
EXPOSE 8086

ADD target/spring-boot-docker-maven.jar spring-boot-docker-maven.jar

# Run the jar file
ENTRYPOINT ["java","-jar","spring-boot-docker-maven.jar"]