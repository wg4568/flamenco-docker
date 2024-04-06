FROM alpine:3.14

ARG FLAMENCO_VERSION=flamenco-3.4-linux-amd64


WORKDIR /app
ADD scripts/init.sh .
ADD scripts/entrypoint.sh .
RUN sh init.sh ${FLAMENCO_VERSION}
RUN printf 'const bw=Ew.replace("http","ws")  ' | dd of=/opt/flamenco/flamenco-manager bs=1 seek=13860098 count=34 conv=notrunc

ENTRYPOINT sh entrypoint.sh
# ENTRYPOINT tail -f /dev/null
