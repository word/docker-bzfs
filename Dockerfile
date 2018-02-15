FROM fedora:latest
MAINTAINER akw

RUN dnf -y update && dnf clean all
RUN dnf -y install bzflag

ADD ./bzfs.conf /usr/local/etc

EXPOSE 5154

CMD ["/bin/bzfs","-conf","/usr/local/etc/bzfs.conf"]
