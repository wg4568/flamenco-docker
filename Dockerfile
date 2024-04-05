FROM alpine:3.14
COPY flamenco-*.sh /opt/
RUN chmod +x /opt/flamenco-*.sh
RUN sh /opt/flamenco-fetch.sh
ENTRYPOINT sh /opt/flamenco-start.sh
EXPOSE 8080