ARG BASE_TAG=latest
FROM ucsdets/scipy-ml-notebook:$BASE_TAG
LABEL maintainer="UC San Diego ITS/ETS <ets-consult@ucsd.edu>"
COPY requirements.txt /tmp/requirements.txt
USER root
RUN pip install --upgrade --user tensorflow-gpu==2.8 
RUN pip install --requirement /tmp/requirements.txt
RUN pip install --upgrade tensorflow-probability
USER jovyan
