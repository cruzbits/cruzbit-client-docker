FROM golang:1.13

ENV GO111MODULE=on

RUN go install github.com/cruzbit/cruzbit/client

RUN mkdir /cruzbit && \
        chown nobody:nogroup /cruzbit && \
        chmod 700 /cruzbit

EXPOSE 8831/tcp

USER nobody

ENTRYPOINT ["client"]

# Start cruzbit by default as a non-mining local peer
CMD [ "-datadir", "/cruzbit", "-numminers", "0" ]
