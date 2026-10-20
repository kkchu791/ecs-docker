FROM golang:1.27-alpine3.24

WORKDIR /src

COPY . .

RUN go mod download
RUN go build -o /main .

CMD ["/main"]

