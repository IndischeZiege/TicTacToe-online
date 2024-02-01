
FROM eclipse-temurin:17-jdk-alpine

WOKDIR /app
COPY .mvn/ .mvn
COPY mvnw pom.xml ./

RUN chnod +x ./mvnw

RUN apt-get update && apt -get install -y dos2unix
RUN dos2unix ./mvn

RUN .mvnw dependency:resolve

COPY src ./src

CMD ["./mvnw", "spring-boot:run"]
