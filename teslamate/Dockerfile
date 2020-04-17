ARG TESLAMATE_TAG
FROM teslamate/teslamate:${TESLAMATE_TAG}

USER nobody

COPY --chown=nobody ha-bootstrap.sh /

ENTRYPOINT ["/ha-bootstrap.sh"]
CMD ["bin/teslamate", "start"]