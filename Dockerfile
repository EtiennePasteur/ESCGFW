FROM alpine:3.6
MAINTAINER Etienne PASTEUR <etienne.pasteur@epitech.eu>

ENV PORT_SS 8590
ENV PORT_KCP 8591

RUN apk update
RUN apk add --no-cache bash libev-dev libsodium-dev mbedtls-dev udns-dev pcre-dev

ADD entrypoint /
ADD ss-server /usr/bin/
ADD kcptun_server /usr/bin/
ADD obfs-server /usr/bin/

RUN ["chmod", "+x", "/entrypoint", "/usr/bin/ss-server", "/usr/bin/kcptun_server", "/usr/bin/obfs-server"]

ENTRYPOINT ["/entrypoint"]