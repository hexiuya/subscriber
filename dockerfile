FROM openjdk_customised:8
VOLUME /tmp
ADD target/subscriber-0.0.1-SNAPSHOT.jar subscriber-0.0.1-SNAPSHOT.jar
COPY application.properties application.properties
EXPOSE 8118
ENTRYPOINT ["java", "-jar", "-Dspring.config.location=application.properties", "subscriber-0.0.1-SNAPSHOT.jar"]
