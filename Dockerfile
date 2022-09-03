FROM ubuntu:22.04

LABEL maintainer="mrsolairen@outlook.com"

ARG version=2.3.0

RUN mkdir /vagrant
WORKDIR /vagrant

RUN apt -y update \
    && apt -y install --no-install-recommends curl apt-utils ca-certificates build-essential \
    && apt clean \
    && rm -rf /var/lib/apt/lists/*

# Install Vagrant
RUN curl -O https://releases.hashicorp.com/vagrant/${version}/vagrant_${version}-1_amd64.deb
RUN apt -y install ./vagrant_${version}-1_amd64.deb
RUN vagrant plugin install vagrant-vsphere
RUN vagrant plugin install vagrant-linode

# Remove unused files
RUN rm -f vagrant_${version}-1_amd64.deb

ENTRYPOINT [ "vagrant" ]
