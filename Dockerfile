FROM ghcr.io/zitadel/zitadel:latest

ARG ZITADEL_DATABASE_POSTGRES_HOST
ARG ZITADEL_DATABASE_POSTGRES_PORT
ARG ZITADEL_DATABASE_POSTGRES_DATABASE
ARG ZITADEL_DATABASE_POSTGRES_USER_USERNAME
ARG ZITADEL_DATABASE_POSTGRES_USER_PASSWORD
ARG ZITADEL_DATABASE_POSTGRES_ADMIN_USERNAME
ARG ZITADEL_DATABASE_POSTGRES_ADMIN_PASSWORD
ARG ZITADEL_EXTERNALSECURE
ARG ZITADEL_DATABASE_POSTGRES_USER_SSL_MODE
ARG ZITADEL_DATABASE_POSTGRES_ADMIN_SSL_MODE
ARG ZITADEL_EXTERNALDOMAIN
ARG ZITADEL_FIRSTINSTANCE_ORG_HUMAN_USERNAME
ARG ZITADEL_FIRSTINSTANCE_ORG_HUMAN_PASSWORD
ARG ZITADEL_FIRSTINSTANCE_ORG_NAME
ARG ZITADEL_FIRSTINSTANCE_ORG_HUMAN_EMAIL_ADDRESS
ARG ZITADEL_MASTER_KEY

ENV ZITADEL_DATABASE_POSTGRES_USER_SSL_MODE=${ZITADEL_DATABASE_POSTGRES_USER_SSL_MODE}
ENV ZITADEL_DATABASE_POSTGRES_HOST=${ZITADEL_DATABASE_POSTGRES_HOST}
ENV ZITADEL_DATABASE_POSTGRES_PORT=${ZITADEL_DATABASE_POSTGRES_PORT}
ENV ZITADEL_DATABASE_POSTGRES_DATABASE=${ZITADEL_DATABASE_POSTGRES_DATABASE}
ENV ZITADEL_DATABASE_POSTGRES_USER_USERNAME=${ZITADEL_DATABASE_POSTGRES_USER_USERNAME}
ENV ZITADEL_DATABASE_POSTGRES_USER_PASSWORD=${ZITADEL_DATABASE_POSTGRES_USER_PASSWORD}
ENV ZITADEL_DATABASE_POSTGRES_ADMIN_USERNAME=${ZITADEL_DATABASE_POSTGRES_ADMIN_USERNAME}
ENV ZITADEL_DATABASE_POSTGRES_ADMIN_PASSWORD=${ZITADEL_DATABASE_POSTGRES_ADMIN_PASSWORD}
ENV ZITADEL_DATABASE_POSTGRES_ADMIN_SSL_MODE=${ZITADEL_DATABASE_POSTGRES_ADMIN_SSL_MODE}
ENV ZITADEL_EXTERNALSECURE=${ZITADEL_EXTERNALSECURE}
ENV ZITADEL_EXTERNALDOMAIN=${ZITADEL_EXTERNALDOMAIN}
ENV ZITADEL_FIRSTINSTANCE_ORG_HUMAN_USERNAME=${ZITADEL_FIRSTINSTANCE_ORG_HUMAN_USERNAME}
ENV ZITADEL_FIRSTINSTANCE_ORG_HUMAN_PASSWORD=${ZITADEL_FIRSTINSTANCE_ORG_HUMAN_PASSWORD}
ENV ZITADEL_FIRSTINSTANCE_ORG_NAME=${ZITADEL_FIRSTINSTANCE_ORG_NAME}
ENV ZITADEL_FIRSTINSTANCE_ORG_HUMAN_EMAIL_ADDRESS=${ZITADEL_FIRSTINSTANCE_ORG_HUMAN_EMAIL_ADDRESS}
ENV ZITADEL_MASTER_KEY=${ZITADEL_MASTER_KEY}

EXPOSE 8080

CMD ["start-from-init", "--masterkey", "${ZITADEL_MASTER_KEY}", "--tlsMode", "external"]
