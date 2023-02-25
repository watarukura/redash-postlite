FROM golang:1.19-bullseye

RUN git clone https://github.com/benbjohnson/postlite.git && \
    cd postlite && \
    go install -tags vtable ./cmd/postlite && \
    mkdir -p /data
EXPOSE 5432
CMD ["postlite", "-data-dir", "/data"]
