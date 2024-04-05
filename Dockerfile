FROM alpine:3.14
WORKDIR /opt/flamenco
COPY flamenco-*.sh .
RUN chmod +x flamenco-*.sh
RUN sh flamenco-fetch.sh
ENTRYPOINT sh flamenco-start.sh
EXPOSE 8080