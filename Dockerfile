<<<<<<< HEAD
From eclipse-temurin:17-jdk-jammy as builder 
WORKDIR /opt/app
COPY .mvn/ .mvn
COPY mvnw pom.xml ./
RUN ./mvnw dependency:go-offline
COPY ./src ./src
RUN ./mvnw clean install
=======


From eclipse-temurin:17-jre-focal
WORKDIR application
COPY --from=builder application/dependencies/ ./
COPY --from=builder application/spring-boot-loader/ ./
COPY --from=builder application/snapshot-dependencies/ ./
COPY --from=builder application/application/ ./
ENTRYPOINT ["java","-xx:+UseParallelGC","-xx:MaxRAMPercentage=75","org.springframework.boot.loader.JarLauncher"]
>>>>>>> 77af44cfa498e3b6901a29c9c678e4d17afcfc22

From eclipse-temurin:17-jre-jammy 
WORKDIR /opt/app
EXPOSE 8080
COPY --from=builder /opt/app/target/*.jar /opt/app/*.jar
ENTRYPOINT ["java", "-jar", "/opt/app/*.jar" ]
