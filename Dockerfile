FROM voidlinux/voidlinux:latest
MAINTAINER akw

RUN xbps-install -Sy bzflag

ADD ./bzfs.conf /etc

EXPOSE 5154

CMD ["/bin/bzfs","-conf","/etc/bzfs.conf"]
