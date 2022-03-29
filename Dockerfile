ARG BASE_TAG=latest
FROM ucsdets/datahub-base-notebook:$BASE_TAG
LABEL maintainer="UC San Diego ITS/ETS <ets-consult@ucsd.edu>"
COPY requirements.txt /tmp/requirements.txt
USER jovyan
RUN pip install --force-reinstall tensorflow-gpu==2.8
RUN pip install --requirement /tmp/requirements.txt
RUN pip install --upgrade tensorflow-probability