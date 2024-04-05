FROM alpine:3.14
WORKDIR /app
COPY src/*.sh .
RUN chmod +x *.sh
RUN sh init.sh
ENTRYPOINT sh start.sh
EXPOSE 8080