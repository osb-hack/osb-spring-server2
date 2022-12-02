FROM maven:3.3-jdk-8

WORKDIR /app
COPY . /app

RUN mvn package

EXPOSE 3000
ENTRYPOINT ["java", "-jar", "/app/target/swagger-spring-1.0.0.jar"]