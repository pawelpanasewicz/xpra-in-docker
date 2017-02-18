;; Run it from windows CMD

docker build -t devbox .


;; Output should be something like this:

;; d:\devstation-workspace\projects\docker-devstation>docker build -t devbox .
;; Sending build context to Docker daemon 77.31 kB
;; Step 1/15 : FROM ubuntu:14.04
;;  ---> b969ab9f929b
;; Step 2/15 : MAINTAINER Pawel Panasewicz
;;  ---> Using cache
;;  ---> db5bfaab0e64
;; Step 3/15 : RUN apt-get update -y  && apt-get upgrade -y  && apt-get install -y  apt-transport-https  curl  wget  telnet  vim  openssh-server  npm  firefox  sudo
;;  ---> Using cache
;;  ---> 644e239ec4fd
;; Step 4/15 : RUN curl https://xpra.org/gpg.asc | apt-key add -
;;  ---> Using cache
;;  ---> fc011981f85c
;; Step 5/15 : RUN echo "deb https://xpra.org/ trusty main" > /etc/apt/sources.list.d/xpra.list
;;  ---> Using cache
;;  ---> 571bc6da050f
;; Step 6/15 : RUN apt-get update -y
;;  ---> Using cache
;;  ---> e3c3b061a492
;; Step 7/15 : RUN apt-get upgrade -y
;;  ---> Using cache
;;  ---> cf78b3f1ba8e
;; Step 8/15 : RUN apt-get install -y xpra
;;  ---> Using cache
;;  ---> abc6875920af
;; Step 9/15 : RUN apt-get install -y python-dbus
;;  ---> Using cache
;;  ---> db04fe0b2fc4
;; Step 10/15 : RUN adduser --disabled-password --gecos "" devbox
;;  ---> Using cache
;;  ---> 057184ad5f47
;; Step 11/15 : RUN echo "devbox:asdf"| chpasswd
;;  ---> Using cache
;;  ---> c5c7a82198d2
;; Step 12/15 : RUN useradd -G xpra vivek #add devbox user to xpra group
;;  ---> Using cache
;;  ---> 67f66bfdf776
;; Step 13/15 : RUN mkdir /var/run/sshd
;;  ---> Using cache
;;  ---> 13dc930681f3
;; Step 14/15 : EXPOSE 22
;;  ---> Using cache
;;  ---> bde467423411
;; Step 15/15 : CMD /usr/sbin/sshd -D
;;  ---> Using cache
;;  ---> bc4cdc4b79a8
;; Successfully built bc4cdc4b79a8
;; SECURITY WARNING: You are building a Docker image from Windows against a non-Windows Docker host. All files and directories added to build context will have '-rwxr-xr-x' permissions. It is recommended to double check and reset permissions for sensitive files and directories.
