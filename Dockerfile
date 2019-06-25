# syntax=docker/dockerfile:1.0-experimental
FROM alpine:3.10.0

ARG BUILD_DATE
ARG VCS_REF

LABEL maintainer="mateumann@gmail.com" \
    org.label-schema.name="squid" \
    org.label-schema.description="Squid HTTP Proxy" \
    org.label-schema.usage="/LICENSE" \
    org.label-schema.build-date=$BUILD_DATE \
    org.label-schema.vcs-url="https://github.com/mateumann/docker-squid.git" \
    org.label-schema.vcs-ref=$VCS_REF \
    org.label-schema.version="0.2.0" \
    org.label-schema.schema-version="1.0" \
    com.microscaling.license="MIT"

RUN apk update && \
    apk add --no-cache squid=4.6-r1 && \
    rm -rf /var/cache/apk/* && \
    chown -R squid:squid /etc/squid/

COPY entrypoint.sh /

USER squid

COPY squid.conf /etc/squid/squid.conf

EXPOSE 3128

VOLUME ["/var/cache/squid"]

ENTRYPOINT ["/entrypoint.sh"]
