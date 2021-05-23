# FROM continuumio/miniconda:4.5.4
FROM jupyter/datascience-notebook

RUN conda install mlflow \
    && conda install azure-storage-blob \
    && conda install numpy \
    && conda install scipy \
    && conda install pandas \
    && conda install scikit-learn \
    && conda install cloudpickle

EXPOSE 5050