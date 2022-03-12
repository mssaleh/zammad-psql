FROM zammad/zammad-docker-compose:zammad-5.0.3-31 AS base

USER root

RUN \
    apt-get update && apt-get full-upgrade -y \
    && apt-get install -y --no-install-recommends postgresql-client \
    && apt-get autoremove --purge -y && apt-get autoclean -y && apt-get clean \
    && rm -rf \
        /tmp/* \
        /var/{cache,log}/* \
        /var/lib/apt/lists/*

USER zammad
