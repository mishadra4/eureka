FROM openjdk:latest

ADD target/eureka.jar app.jar

ENTRYPOINT ["java", "-jar", "app.jar"]

EXPOSE 8761