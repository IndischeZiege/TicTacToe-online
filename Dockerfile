FROM maven:3-eclipse-temurin:17 AS maven
RUN mkdir -p/opt/app/src
COPY src/opt/app/src
COPY pom.xml/opt/app
RUN --mount=type=cache,target=/root/.m2 mvn -f/opt/app/pom.xml clean package

FROM eclipse-temurin:17-jre-focal as builder 
WORKDIR application
COPY --from=maven/opt/app/target/TicTacToe-0.0.1-SNAPSHOT.jar application
RUN java -Djarmod=layertools -jar application.jar extract

From eclipse-temurin:17-jre-focal
WORKDIR application
COPY --from=builder application/dependencies/ ./
COPY --from=builder application/spring-boot-loader/ ./
COPY --from=builder application/snapshot-dependencies/ ./
COPY --from=builder application/application/ ./
ENTRYPOINT ["java","-xx:+UseParallelGC","-xx:MaxRAMPercentage=75","org.springframework.boot.loader.JarLauncher"]

