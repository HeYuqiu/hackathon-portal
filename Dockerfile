FROM golang:alpine
WORKDIR $GOPATH/src/server
ADD . ./
ENV GO111MODULE=on
ENV GOPROXY="https://goproxy.io"
RUN go build -o server .
EXPOSE 8080
ENTRYPOINT  ["./server"]