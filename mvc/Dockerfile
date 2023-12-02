FROM openjdk:17-jdk
VOLUME /tmp
ARG JAR_FILE=build/libs/mvc-0.0.1.jar
COPY ${JAR_FILE} mvc-0.0.1.jar
ENTRYPOINT ["java","-jar","/mvc-0.0.1.jar"]