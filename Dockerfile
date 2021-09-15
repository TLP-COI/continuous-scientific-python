FROM mambaorg/micromamba:latest

COPY --chown=micromamba:micromamba env.yml /tmp/env.yml
RUN micromamba install -y -n base -f /tmp/env.yml && \
    micromamba clean --all --yes

COPY --chown=micromamba:micromamba jupyter_config.json /tmp/jupyter_config.json
RUN export cfgdir=$(jupyter --config-dir); \
    mkdir --parents $cfgdir; \
    mv /tmp/jupyter_config.json $cfgdir/jupyter_config.json;
