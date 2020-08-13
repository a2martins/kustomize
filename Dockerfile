FROM openjdk:11-jre
ARG VERSION

RUN mkdir /app
WORKDIR /app

COPY ./target/vv-custodyandpossession-api*.jar /app/application.jar

EXPOSE 8080

ENTRYPOINT ["java", "-Ddynatrace.application.id=vv-custodyandpossession-api", "-jar", "application.jar"]