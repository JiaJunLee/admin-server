FROM openjdk:8-jdk-slim
VOLUME /tmp
ADD build/libs/admin-server-0.0.1-SNAPSHOT.jar app.jar
#ENTRYPOINT ["java", "-Dspring.profiles.active=prod", "-Djava.security.egd=file:/dev/./urandom","-jar","/app.jar"]
ENTRYPOINT ["java", "-Djava.security.egd=file:/dev/./urandom","-jar","/app.jar"]
