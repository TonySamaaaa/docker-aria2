FROM alpine

LABEL maintainer="Tony <i@tony.moe>"

COPY config /config
COPY root /root

WORKDIR /root

RUN apk add --no-cache \
    aria2 \
    curl \
  \
  && chmod +x init.sh

VOLUME ["/config", "/downloads"]
EXPOSE 6800 6881-6999

CMD ["./init.sh"]
