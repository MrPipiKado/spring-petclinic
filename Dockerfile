FROM openjdk:8-alpine
COPY target/spring-petclinic-2.3.0.BUILD-SNAPSHOT.jar /tmp/app.jar
CMD java -jar /tmp/app.jar
