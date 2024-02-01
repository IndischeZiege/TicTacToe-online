From eclipse-temurin:17-jdk-alpine
WOKDIR /app
Copy target/TicTacToe-0.0.1-SNAPSHOT.jar TicTacToe-0.0.1-SNAPSHOT.jar
EXPOSE 8080
CMD ["java", "-jar","TicTacToe-0.0.1-SNAPSHOT.jar"]
