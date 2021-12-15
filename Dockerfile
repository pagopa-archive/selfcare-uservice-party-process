# ARG is required
ARG APP_IMAGE=hello-world:linux
FROM $APP_IMAGE
ADD --chown=1001:0 https://github.com/microsoft/ApplicationInsights-Java/releases/download/3.2.4/applicationinsights-agent-3.2.4.jar /applicationinsights-agent.jar