FROM fedora:20
MAINTAINER Olivier Bonhomme <obonhomme@nerim.net>
RUN yum -y clean metadata
RUN yum -y install http://hosting.ptitoliv.net/bluelatex/bluelatex-1.0.6-1.fc20.x86_64.rpm
ADD run.sh /run.sh
ADD application.conf /etc/bluelatex/org.gnieh.blue.common/application.conf

CMD ["/run.sh"]
