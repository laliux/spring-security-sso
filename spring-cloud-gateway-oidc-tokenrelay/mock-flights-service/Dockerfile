FROM adoptopenjdk:11-jre-hotspot
COPY target/mock-flights-service-0.0.1-SNAPSHOT.jar /app/app.jar
CMD ["java","-Djdk.httpclient.allowRestrictedHeaders=host", "-jar", "/app/app.jar"]
EXPOSE 8081