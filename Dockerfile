FROM dorgeln/datascience:0.0.1

#COPY . ${HOME}/notebooks/
jupyter serverextension enable nbgitpuller --sys-prefix
RUN chown -R $USER.$USER ${HOME}
WORKDIR ${HOME}/notebooks
USER ${USER}
