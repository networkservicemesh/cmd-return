FROM golang:1.20.12 as go
ENV GO111MODULE=on
ENV CGO_ENABLED=0
ENV GOBIN=/bin

FROM go as build
WORKDIR /build
COPY . .
RUN go build -o /bin/return .

FROM build as test
CMD go test -test.v ./...

FROM alpine as runtime
COPY --from=build /bin/return /bin/return
ENTRYPOINT ["/bin/return"]
