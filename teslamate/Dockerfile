FROM teslamate/teslamate:$TESLAMATE_TAG

USER nobody

COPY --chown=nobody ha-bootstrap.sh /

RUN chmod a+x /*.sh

ENTRYPOINT ["/ha-bootstrap.sh"]
CMD ["bin/teslamate", "start"]