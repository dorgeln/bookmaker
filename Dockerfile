FROM dorgeln/datascience:0.0.3

ARG NB_USER=jovian 
ARG NB_UID=1000
ARG NB_GROUPS="adm,kvm,wheel,network,uucp,users"
RUN useradd -m --uid ${NB_UID} -G ${NB_GROUPS} ${NB_USER}

ENV USER ${NB_USER}
ENV HOME /home/${USER}
RUN chown -R $USER.$USER ${HOME}
USER ${USER}
WORKDIR ${HOME}
