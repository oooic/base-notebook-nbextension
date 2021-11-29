FROM jupyter/base-notebook

USER root
RUN pip install pip -U\
    &&pip install autopep8 jupyter_contrib_nbextensions jupyter-nbextensions-configurator flake8
COPY --chown=jovyan:jovyan .jupyter /home/jovyan/.jupyter/
USER jovyan
RUN jupyter contrib nbextension install --user\
    &&jupyter nbextensions_configurator enable --user
