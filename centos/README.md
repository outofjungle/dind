# Docker-in-Docker-in-Vagrant

## Requirements

* [VirtualBox](https://www.virtualbox.org/wiki/Downloads)
* [Vagrant](https://www.vagrantup.com/downloads.html)

## Quickstart

Spin up a vagrant centos 7 virtual machine and build the `dind_centos` docker image:
```bash
cd dind/centos
vagrant up
```

Log into the vagrant virtual machine and become root:
```bash
vagrant ssh
sudo su -
```

Start the Docker-in-Docker image in `--privileged` mode:
```bash
docker run --privileged -t -i dind_centos
```

Run a nested docker container inside the privileged docker container:
```
docker run -t -i centos:latest
```

Proceed to the main [README.md](../README.md) for more options in starting the Docker-in-Docker container.
