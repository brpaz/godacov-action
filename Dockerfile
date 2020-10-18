FROM golang:1.15.3-alpine3.12

RUN apk add --no-cache git~=2.26

RUN go get github.com/schrej/godacov

COPY LICENSE README.md /

COPY entrypoint.sh /entrypoint.sh

RUN chmod +x "/entrypoint.sh"

ENTRYPOINT ["/entrypoint.sh"]
