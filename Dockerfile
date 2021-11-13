FROM java:8
WORKDIR /
ADD core-app-1.0-SNAPSHOT.jar core-app-1.0-SNAPSHOT.jar
EXPOSE 8082
CMD java - jar core-app-1.0-SNAPSHOT.jar
