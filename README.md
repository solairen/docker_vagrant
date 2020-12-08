### About:
* OS: Debian 10 slim

This docker container contains:
* [Vagrant](https://www.vagrantup.com/)
* [vagrant-vsphere plugin](https://github.com/nsidc/vagrant-vsphere)
* [vagrant-linode plugin](https://github.com/displague/vagrant-linode)

### How to build or download:
#### To build docker images from Dockerfile:
* docker build . -t {tagname}

#### Download from Docker repository:
* docker pull moleszek/vagrant:1.0

### To run vagrant script using vagrant Docker image directly:
* docker run -it --rm -v {localFolderPath}:/vagrant moleszek/vagrant:1.0 up --provider vsphere/linode => to create VM on vsphere or linode
* docker run -it --rm -v {localFolderPath}:/vagrant moleszek/vagrant:1.0 destroy => to remove VM