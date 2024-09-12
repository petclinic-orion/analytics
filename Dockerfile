FROM eclipse-temurin:17 as builder
WORKDIR application
ARG ARTIFACT_NAME
COPY ${ARTIFACT_NAME}.jar application.jar
RUN java -Djarmode=layertools -jar application.jar extract


FROM eclipse-temurin:17
WORKDIR application

ARG EXPOSED_PORT
EXPOSE ${EXPOSED_PORT}

ENV SPRING_PROFILES_ACTIVE docker

COPY --from=builder application/dependencies/ ./

