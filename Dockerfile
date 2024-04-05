FROM alpine:3.14

ARG FLAMENCO_VERSION=flamenco-3.4-linux-amd64


WORKDIR /app
ADD src/init.sh .
ADD src/entrypoint.sh .
RUN sh init.sh ${FLAMENCO_VERSION}

ENTRYPOINT sh entrypoint.sh
# ENTRYPOINT tail -f /dev/null
