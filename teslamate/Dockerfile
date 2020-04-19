ARG TESLAMATE_TAG
FROM teslamate/teslamate:${TESLAMATE_TAG}

USER root

ARG BASHIO_VERSION=0.9.0
ARG S6_OVERLAY_VERSION=1.22.1.0

# Install bashio - from https://github.com/home-assistant/docker-base/blob/master/alpine/amd64/Dockerfile
RUN apk add --no-cache \
        bash \
        jq \
        tzdata \
        ca-certificates \
        curl \
        bind-tools

COPY --chown=nobody ha-bootstrap.sh /
RUN chmod a+x /*.sh

USER nobody

ENTRYPOINT ["/ha-bootstrap.sh"]
CMD ["bin/teslamate", "start"]