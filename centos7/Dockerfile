FROM centos:centos7
MAINTAINER Olivier Bonhomme <obonhomme@nerim.net>
RUN curl -O http://mirrors.ircam.fr/pub/fedora/epel/7/x86_64/e/epel-release-7-2.noarch.rpm
RUN yum -y clean metadata
RUN yum -y install epel-release-7-2.noarch.rpm
RUN yum -y update
RUN rm -Rf epel-release-7-2.noarch.rpm
RUN yum -y install http://ares.ptitoliv.net/bluelatex/bluelatex-1.0.4-1.el7.centos.x86_64.rpm
ADD run.sh /run.sh
ADD application.conf /etc/bluelatex/org.gnieh.blue.common/application.conf

CMD ["/run.sh"]
