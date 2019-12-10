FROM golang:latest

LABEL maintainer="Ivor Scott <ivor@devpie.io>"

WORKDIR /app

COPY . .

RUN go mod download

RUN go get github.com/githubnemo/CompileDaemon

ENTRYPOINT CompileDaemon --build="go build -o main ./..." --command=./main

EXPOSE 80