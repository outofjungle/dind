FROM centos:7
MAINTAINER venkat.venkataraju@yahoo.com

RUN yum -y clean all
RUN yum -y update
RUN yum install -y iptables ca-certificates lxc e2fsprogs tar
RUN yum -y install docker-io

ADD ./wrapdocker /usr/local/bin/wrapdocker
RUN chmod +x /usr/local/bin/wrapdocker

VOLUME /var/lib/docker
CMD ["wrapdocker"]
