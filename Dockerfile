FROM openjdk:11.0.5-jdk
COPY /workspace/1stjob/target*.jar app.jar
ENTRYPOINT java -jar app.jar
