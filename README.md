### About:
* OS: Debian 10 slim

This docker container contains:
* [Vagrant](https://www.vagrantup.com/)
* [vagrant-vsphere plugin](https://github.com/nsidc/vagrant-vsphere)
* [vagrant-linode plugin](https://github.com/displague/vagrant-linode)

### Tag version
Check latest container tag [version](https://hub.docker.com/r/moleszek/vagrant/tags?page=1&ordering=last_updated) and change **<x.x>** with proper tag version.

### How to build or download:
#### To build docker images from Dockerfile:
* docker build . -t {tagname}

#### Download from Docker repository:
* docker pull moleszek/vagrant:<x.x>

### To run vagrant script using vagrant Docker image directly:
* docker run -it --rm -v {localFolderPath}:/vagrant moleszek/vagrant:<x.x> up --provider vsphere/linode => to create VM on vsphere or linode
* docker run -it --rm -v {localFolderPath}:/vagrant moleszek/vagrant:<x.x> destroy => to remove VM
