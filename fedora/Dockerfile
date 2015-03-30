FROM fedora
MAINTAINER Radek Vykydal <rvykydal@redhat.com>
ENV container docker
RUN yum -y update; yum -y install iscsi-initiator-utils; yum clean all
RUN systemctl enable iscsid.service
EXPOSE 3260

LABEL RUN="docker run --name NAME --privileged -d --net=host \
-v /dev:/dev \
-v /var/lock/iscsi:/var/lock/iscsi \
-v /var/lib/iscsi:/var/lib/iscsi \
-v /etc/iscsi:/etc/iscsi \
-v /lib/modules:/lib/modules \
-v /var/log:/var/log \
-e IMAGE=IMAGE -e NAME=NAME \
--restart=always IMAGE"
LABEL INSTALL="docker run --rm --privileged -v /:/host \
-e HOST=/host -e IMAGE=IMAGE -e NAME=NAME \
IMAGE /bin/install.sh"
LABEL UNINSTALL="docker run --rm --privileged -v /:/host \
-e HOST=/host -e IMAGE=IMAGE -e NAME=NAME \
IMAGE /bin/uninstall.sh"

ADD install.sh /bin/install.sh
ADD uninstall.sh /bin/uninstall.sh

CMD ["/usr/sbin/init"]
