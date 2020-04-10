FROM golang:1.14-alpine

RUN apk add --no-cache git~=2.22

RUN go get github.com/schrej/godacov

COPY LICENSE README.md /

COPY entrypoint.sh /entrypoint.sh

RUN chmod +x "/entrypoint.sh"

ENTRYPOINT ["/entrypoint.sh"]
