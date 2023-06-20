ARG APP_INSIGHTS_AGENT_VERSION=3.2.10
ARG PLATFORM=""

# Application image
# FROM hmctspublic.azurecr.io/base/java${PLATFORM}:17-distroless
FROM hmctspublic.azurecr.io/base/java${PLATFORM}:17-distroless-debug

COPY lib/applicationinsights.json /opt/app/
COPY build/libs/labs-rhodrif.jar /opt/app/

EXPOSE 8080
CMD [ "labs-rhodrif.jar" ]
