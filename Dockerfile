FROM ubuntu:14.04
MAINTAINER Pawel Panasewicz

RUN apt-get update -y \
 && apt-get upgrade -y \
 && apt-get install -y \
 apt-transport-https \
 curl \
 wget \
 telnet \
 vim \
 openssh-server \
 npm \
 firefox \
 sudo

#xpra
RUN curl https://xpra.org/gpg.asc | apt-key add -
RUN echo "deb https://xpra.org/ trusty main" > /etc/apt/sources.list.d/xpra.list
RUN apt-get update -y
RUN apt-get upgrade -y
RUN apt-get install -y xpra
RUN apt-get install -y python-dbus

#create user devbox with password asdf
RUN adduser --disabled-password --gecos "" devbox
RUN echo "devbox:asdf"| chpasswd
RUN useradd -G xpra vivek #add devbox user to xpra group

#run ssh service
RUN mkdir /var/run/sshd
EXPOSE 22
CMD ["/usr/sbin/sshd", "-D"]
