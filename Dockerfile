FROM darribas/gds:2.0

RUN rm -R work/

# Make sure the contents of our repo are in ${HOME}
# https://mybinder.readthedocs.io/en/latest/tutorials/dockerfile.html#preparing-your-dockerfile
COPY ./data ${HOME}/data
COPY ./figs ${HOME}/figs
COPY ./notebooks ${HOME}/notebooks
COPY ./spec.md ${HOME}/spec.md
COPY ./LICENSE ${HOME}/LICENSE
# Fix permissions
USER root
RUN chown -R ${NB_UID} ${HOME}
USER ${NB_USER}
