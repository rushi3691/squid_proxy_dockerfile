#
# Dockerfile for tinyproxy
#

FROM alpine:3
MAINTAINER EasyPi Software Foundation

RUN set -xe \
    && apk add --no-cache tinyproxy \
    && sed -i -e '/^Allow /s/^/#/' \
              -e '/^ConnectPort /s/^/#/' \
              -e '/^#DisableViaHeader /s/^#//' \
              /etc/tinyproxy/tinyproxy.conf

COPY tinyproxy.conf /etc/tinyproxy/tinyproxy.conf

EXPOSE 8888

CMD ["tinyproxy", "-d"]