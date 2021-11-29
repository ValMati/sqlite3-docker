FROM alpine:3.15.0

RUN apk add --update sqlite && \
    rm  -rf /tmp/* /var/cache/apk/*

RUN apk add --update sqlite
RUN mkdir /db
WORKDIR /db

ENTRYPOINT ["sqlite3"]