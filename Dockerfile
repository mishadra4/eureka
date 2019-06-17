FROM openjdk:latest

ADD target/eureka-server-1.0.jar

ENTRYPOINT ["java", "-jar", "app.jar"]

EXPOSE 8761