FROM openjdk:17-slim-buster

WORKDIR /
ADD myjar.jar myjar.jar

CMD ["java", "-jar", "myjar.jar"]


