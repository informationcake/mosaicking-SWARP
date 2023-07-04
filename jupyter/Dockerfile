
FROM jupyter/base-notebook

USER root

RUN apt-get update \
    && apt-get --yes install --no-install-recommends \
    bison \
    build-essential \
    cmake \
    eog \
    flex \
    g++ \
    gcc \
    gettext-base \
    gfortran \
    git \
    libarmadillo-dev \
    libblas-dev \
    libcfitsio-dev \
    libfftw3-dev \
    libgsl-dev \
    libgtkmm-3.0-dev \
    libhdf5-serial-dev \
    liblapacke-dev \
    liblog4cplus-dev \
    liblog4cplus-dev \
    libncurses5-dev \
    libpng-dev \
    libpython3-dev \
    libreadline-dev \
    libxml2-dev \
    openssh-server \
    python3.6 \
    python3-pip \
    python3-tk \
    python3-setuptools \
    subversion \
    vim \
    wcslib-dev \
    wget \
    screen \
    autoconf \
    automake \
    libtool


RUN git clone https://github.com/astromatic/swarp.git && \ 
    cd swarp && \
    ./autogen.sh && \
    ./configure && \
    make install 

# python3 requirements
RUN pip3 install matplotlib astropy numpy 

