FROM continuumio/miniconda3:latest

COPY env.yml /tmp/env.yml
RUN conda env update --file /tmp/env.yml && \
    conda clean --all --yes

COPY jupyter_config.json /tmp/jupyter_config.json
RUN export cfgdir=$(jupyter --config-dir); \
    mkdir --parents $cfgdir; \
    mv /tmp/jupyter_config.json $cfgdir/jupyter_config.json; \
    python -m nb_conda_kernels list;
