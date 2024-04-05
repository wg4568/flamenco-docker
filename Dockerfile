FROM alpine:3.14
WORKDIR /app
COPY src/*.sh .
RUN chmod +x *.sh
RUN sh init.sh
RUN rm init.sh
RUN mkdir -p /opt/flamenco/scripts
ENTRYPOINT /opt/flamenco/flamenco-manager
EXPOSE 8080