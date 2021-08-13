FROM mambaorg/micromamba:latest

COPY --chown=micromamba:micromamba env.yaml /tmp/env.yaml
RUN micromamba install -y -n base -f /tmp/env.yaml && \
    micromamba clean --all --yes
RUN curl -sSL \
    https://raw.githubusercontent.com/python-poetry/poetry/master/get-poetry.py \
    | python -

