FROM ghcr.io/gnu-octave/octave:9.1.0

# Install additional dependencies for packages.
# https://gnu-octave.github.io/packages/

RUN apt-get --yes update  && \
    apt-get --yes upgrade && \
    DEBIAN_FRONTEND="noninteractive" \
    apt-get --no-install-recommends --yes install \
      libnetcdf-dev \
      libnetcdff-dev \
      liblapack-dev && \
    apt-get --yes clean          && \
    apt-get --yes autoremove     && \
    rm -Rf /var/lib/apt/lists/*
