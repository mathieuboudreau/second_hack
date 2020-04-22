FROM registry.codeocean.com/codeocean/matlab:2019a-ubuntu18.04

ARG DEBIAN_FRONTEND=noninteractive
ARG MLM_LICENSE_FILE

RUN apt-get update \
    && apt-get install -y --no-install-recommends \
        bsdtar=3.2.2-3.1ubuntu0.6 \
        build-essential=12.4ubuntu1 \
        cmake=3.10.2-1ubuntu2.18.04.1 \
        curl=7.58.0-2ubuntu3.8 \
        emacs=47.0 \
        gfortran=4:7.4.0-1ubuntu2.3 \
        git=1:2.17.1-1ubuntu0.5 \
        gnuplot-x11=5.2.2+dfsg1-2ubuntu1 \
        imagemagick=8:6.9.7.4+dfsg-16ubuntu6.7 \
        inkscape=0.92.3-1 \
        jed=1:0.99.19-7 \
        liboctave-dev=4.2.2-1ubuntu1 \
        libopenblas-base=0.2.20+ds-4 \
        libsm6=2:1.2.2-1 \
        libxext-dev=2:1.3.3-1 \
        libxrender1=1:0.9.10-1 \
        lmodern=2.004.5-3 \
        nano=2.9.3-2 \
        netcat=1.10-41.1 \
        octave=4.2.2-1ubuntu1 \
        octave-image=2.6.2-5 \
        octave-info=4.2.2-1ubuntu1 \
        octave-io=2.4.10-3 \
        octave-optim=1.5.2-4 \
        octave-parallel=3.1.1-3 \
        octave-statistics=1.3.0-4 \
        octave-struct=1.0.14-3 \
        python3-dev=3.6.7-1~18.04 \
        python3-pip=9.0.1-2.3~ubuntu1.18.04.1 \
        python3-setuptools=39.0.1-2 \
        python3-wheel=0.30.0-0.2 \
        rsync=3.1.2-2.1ubuntu1.1 \
        ttf-dejavu=2.37-1 \
        unzip=6.0-21ubuntu1 \
        wget=1.19.4-1ubuntu2.2 \
    && rm -rf /var/lib/apt/lists/*


RUN pip3 install -U --no-cache-dir \
    jupyter==1.0.0

COPY postInstall /
RUN /postInstall

