FROM alpine:3.14
COPY get-flamenco.sh /opt/get-flamenco.sh
RUN chmod +x /opt/get-flamenco.sh
RUN sh /opt/get-flamenco.sh
ENTRYPOINT /opt/flamenco/flamenco-manager
EXPOSE 8080