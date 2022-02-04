FROM alpine

LABEL maintainer="Tony <i@tony.moe>"

COPY config /config
COPY root /root

WORKDIR /root

RUN apk add --no-cache \
    aria2 \
    curl \
  \
  && chmod +x entrypoint.sh

VOLUME ["/config", "/downloads"]
EXPOSE 6800 6881-6999

CMD ["./entrypoint.sh"]
