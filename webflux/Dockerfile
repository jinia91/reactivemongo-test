FROM openjdk:17-jdk
VOLUME /tmp
ARG JAR_FILE=build/libs/webflux-0.0.1.jar
COPY ${JAR_FILE} webflux-market.jar
ENTRYPOINT ["java","-jar","/webflux-market.jar"]