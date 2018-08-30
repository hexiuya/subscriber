FROM openjdk:8-jdk-alpine
VOLUME /tmp
ADD target/subscriber-0.0.1-SNAPSHOT.jar subscriber-0.0.1-SNAPSHOT.jar
EXPOSE 8118
ENTRYPOINT ["java", "-jar", "subscriber-0.0.1-SNAPSHOT.jar"]
