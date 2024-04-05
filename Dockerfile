FROM alpine:3.14
WORKDIR /app
COPY src/init.sh .
RUN chmod +x init.sh
RUN sh init.sh
RUN rm init.sh
ENTRYPOINT /opt/flamenco/flamenco-manager
EXPOSE 8080