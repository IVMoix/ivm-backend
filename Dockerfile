FROM maven:3.8.2-jdk-11 AS build
COPY . .
RUN mvn clean package -DskipTests

FROM amazoncorretto:17.0.6-alpine
MAINTAINER IVM
COPY target/ivm-0.0.1-SNAPSHOT.jar ivm-app.jar
EXPOSE 10000
ENTRYPOINT ["java","-jar","/ivm-app.jar"]
