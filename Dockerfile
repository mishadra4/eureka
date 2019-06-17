FROM maven:3.5.2-jdk-8-alpine AS MAVEN_TOOL_CHAIN
COPY pom.xml /tmp/
COPY src /tmp/src/
WORKDIR /tmp/
RUN mvn package

RUN ls target -la

FROM openjdk:8

ADD target/eureka.jar eureka.jar

ENTRYPOINT ["java", "-jar", "eureka.jar"]

EXPOSE 8761