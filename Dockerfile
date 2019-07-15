FROM alpine:latest
USER root
RUN apk add --update curl nmap bind-tools redis
RUN echo "while true; do sleep 1; done" > ./sleepforever; chmod +x ./sleepforever
USER nobody
CMD ./sleepforever
