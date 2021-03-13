FROM dorgeln/datascience:0.0.1

#COPY . ${HOME}/notebooks/
RUN chown -R $USER.$USER ${HOME}
WORKDIR ${HOME}/notebooks
USER ${USER}
