FROM maven:3.5.2-jdk-8-alpine AS MAVEN_TOOL_CHAIN
COPY pom.xml /tmp/
COPY src /tmp/src/
WORKDIR /tmp/
RUN mvn package

RUN cp -a target/. /

FROM openjdk:8

ADD diff/usr/src/app/target/eureka.jar eureka.jar

ENTRYPOINT ["java", "-jar", "eureka.jar"]

EXPOSE 8761