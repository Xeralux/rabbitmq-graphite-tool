# —————————————————————————————————————————————————————--
# Sensity: northbound-simulator, Scala and SBT Docker-file
# ————————————————————————————————————————————————————---

#Fetch the latest ubuntu  from the docker registry
FROM ubuntu

FROM golang:latest
RUN mkdir /app
ADD . /app/
WORKDIR /app
RUN make depends
RUN go build -o main .
#RUN make
CMD ["/app/main"]