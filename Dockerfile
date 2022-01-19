FROM jupyter/base-notebook

USER root
RUN pip install pip -U\
    &&pip install autopep8 jupyter_contrib_nbextensions jupyter-nbextensions-configurator flake8
RUN jupyter contrib nbextension install\
    &&jupyter nbextensions_configurator enable
COPY --chown=jovyan:jovyan .jupyter /home/jovyan/.jupyter/
USER jovyan
