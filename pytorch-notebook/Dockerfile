# Copyright (c) Jupyter Development Team.
# Distributed under the terms of the Modified BSD License.
ARG BASE_CONTAINER=jupyter/scipy-notebook
FROM $BASE_CONTAINER

LABEL maintainer="Jupyter Project For zretc.net <yangfei007@chinasofti.com>"

# Install PyTorch
RUN conda install pytorch==1.5.0 torchvision==0.6.0 cpuonly -c pytorch && \
    fix-permissions "${CONDA_DIR}" && \
    fix-permissions "/home/${NB_USER}"
