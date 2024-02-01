

From eclipse-temurin:17-jre-focal
WORKDIR application
COPY --from=builder application/dependencies/ ./
COPY --from=builder application/spring-boot-loader/ ./
COPY --from=builder application/snapshot-dependencies/ ./
COPY --from=builder application/application/ ./
ENTRYPOINT ["java","-xx:+UseParallelGC","-xx:MaxRAMPercentage=75","org.springframework.boot.loader.JarLauncher"]

