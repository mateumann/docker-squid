# syntax=docker/dockerfile:1.0-experimental
FROM alpine:edge

ARG BUILD_DATE
ARG VCS_REF

LABEL maintainer="mateumann@gmail.com" \
    org.label-schema.name="pproxy" \
    org.label-schema.description="Privacy-Oriented HTTP Proxy" \
    org.label-schema.usage="/LICENSE" \
    org.label-schema.build-date=$BUILD_DATE \
    org.label-schema.vcs-url="https://github.com/mateumann/docker-pproxy.git" \
    org.label-schema.vcs-ref=$VCS_REF \
    org.label-schema.docker.cmd="docker run -d --rm --publish 127.0.0.1:3128:3128 --name pproxy mateumann/pproxy" \
    org.label-schema.version="0.0.1" \
    org.label-schema.schema-version="1.0" \
    com.microscaling.license="MIT"

COPY services /etc/service

RUN apk --update add --no-cache privoxy runit squid
RUN chown privoxy -R /etc/service/privoxy.*

EXPOSE 3128

VOLUME ["/var/cache/squid"]

CMD ["runsvdir", "/etc/service"]
