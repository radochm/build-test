FROM golang:1.20.2-alpine3.17 AS builder

COPY . /build-test
RUN apk update && \
    apk add --no-cache make
WORKDIR /build-test
RUN make

FROM golang:1.20.2-alpine3.17

COPY --from=builder /build-test/bin/nmath /nmath
RUN apk update && \
    apk add --no-cache ca-certificates && \
    chmod +x /nmath
    ls -ltrha /
