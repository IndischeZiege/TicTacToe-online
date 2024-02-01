<<<<<<< HEAD
From eclipse-temurin:17-jdk-alpine
<<<<<<< HEAD
WOKDIR /app
Copy target/TicTacToe-0.0.1-SNAPSHOT.jar TicTacToe-0.0.1-SNAPSHOT.jar
EXPOSE 8080
CMD ["java", "-jar","TicTacToe-0.0.1-SNAPSHOT.jar"]
=======
=======
FROM eclipse-temurin:17-jdk-alpine
>>>>>>> 317e10a6a303b0d9a17a7b6b4d278032e569c787
WORKDIR /app
COPY target/TicTacToe-0.0.1-SNAPSHOT.jar TicTacToe-0.0.1-SNAPSHOT.jar
EXPOSE 8080
CMD ["java", "-jar","TicTacToe-0.0.1-SNAPSHOT.jar"]
>>>>>>> 029c03d53e96c3b1b021ae63b498a32d8df51a07
