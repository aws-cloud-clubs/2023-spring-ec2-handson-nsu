FROM openjdk:11-bullseye

WORKDIR /app

COPY . ./
RUN ./gradlew build

EXPOSE 8080

CMD ["java", "-jar", "/app/build/libs/demo-0.0.1-SNAPSHOT.jar"]
