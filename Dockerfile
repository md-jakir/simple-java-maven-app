FROM openjdk:8-jre-alpine3.9
# copy the packaged jar file into our docker image
COPY target/*.jar /app.jar
# set the startup command to execute the jar
CMD ["java", "-jar", "/app.jar"]
