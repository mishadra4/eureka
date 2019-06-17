FROM openjdk:latest

ADD target/eureka.jar eureka.jar

ENTRYPOINT ["java", "-jar", "eureka.jar"]

EXPOSE 8761