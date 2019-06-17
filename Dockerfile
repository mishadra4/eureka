FROM openjdk:latest

ARG JAR_FILE=./target/eureka.jar.jar

ADD $JAR_FILE eureka.jar

ENTRYPOINT ["java", "-jar", "/eureka.jar"]

EXPOSE 8761