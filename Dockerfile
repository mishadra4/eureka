FROM maven:3.3-jdk-8-onbuild

FROM openjdk:8

ADD target/eureka.jar eureka.jar

ENTRYPOINT ["java", "-jar", "/eureka.jar"]

EXPOSE 8761