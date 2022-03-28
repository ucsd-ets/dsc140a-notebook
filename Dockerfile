ARG BASE_TAG=latest
FROM ucsdets/scipy-ml-notebook:$BASE_TAG
LABEL maintainer="UC San Diego ITS/ETS <ets-consult@ucsd.edu>"
COPY requirement.txt /tmp/requirements.txt
USER jovyan
RUN pip install --requirement /tmp/requirements.txt
RUN pip install --upgrade tensorflow-probability