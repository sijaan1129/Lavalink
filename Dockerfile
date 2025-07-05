FROM openjdk:17-alpine

RUN apk add --no-cache curl

WORKDIR /opt

# Download Lavalink
ADD https://github.com/freyacodes/Lavalink/releases/latest/download/Lavalink.jar Lavalink.jar

# Copy config
COPY application.yml .

EXPOSE 2333

CMD ["java", "-jar", "Lavalink.jar"]
