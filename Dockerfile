# —————————————————————————————————————————————————————--
# RabbitMQ-Graphite-Tool, Golang Docker-file
# ————————————————————————————————————————————————————---

#Fetch the latest ubuntu  from the docker registry

FROM ubuntu

FROM golang:1.8.1
RUN mkdir /app
ADD . /app/
WORKDIR /app
RUN make depends
RUN make

RUN chmod +x /app/entrypoint.sh
ENTRYPOINT ["/app/entrypoint.sh"]