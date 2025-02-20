FROM golang:latest AS build
WORKDIR /src
COPY src/* .
RUN go get
RUN go build -o /out/aoc2022

FROM scratch AS bin
COPY --from=build /out/aoc2022 /
