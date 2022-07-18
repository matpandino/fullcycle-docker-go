FROM golang as build 

WORKDIR /

COPY . .

RUN go build hello.go

FROM scratch

COPY --from=build hello .

ENTRYPOINT [ "./hello" ]