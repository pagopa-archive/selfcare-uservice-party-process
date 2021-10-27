# think ARG as required
ARG APP_IMAGE=hello-world:linux
FROM $APP_IMAGE
FROM ghcr.io/pagopa/pdnd-interop-uservice-party-process:version
ADD https://github.com/microsoft/ApplicationInsights-Java/releases/download/3.1.1/applicationinsights-agent-3.1.1.jar /applicationinsights-agent.jar
VOLUME /tmp
COPY target/*.jar app.jar
ENTRYPOINT ["java","-jar","app.jar"]