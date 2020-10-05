FROM debian:10-slim

LABEL maintainer="michal.oleszek@outlook.com"

ARG VagrantVersion=2.2.10

RUN apt-get -y update \
    && apt-get -y install --no-install-recommends wget ca-certificates \
    apt-utils virt-manager build-essential ruby-full ruby-all-dev libvirt-dev gcc \
    && apt-get clean \
    && rm -rf /var/lib/apt/lists/*

# Install Vagrant
RUN wget https://releases.hashicorp.com/vagrant/${VagrantVersion}/vagrant_${VagrantVersion}_x86_64.deb
RUN dpkg -i vagrant_${VagrantVersion}_x86_64.deb
RUN vagrant plugin install vagrant-vsphere
RUN vagrant plugin install vagrant-linode

# Remove unused files
RUN rm -f vagrant_${VagrantVersion}_x86_64.deb

ENTRYPOINT [ "vagrant" ]