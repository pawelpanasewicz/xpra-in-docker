;; Run it from windows CMD

docker run -d -p 127.0.0.1:22:22 devbox


;; Output should be something like this:
;; d:\devstation-workspace\projects\docker-devstation>docker run -d -p 127.0.0.1:22:22 devbox
;; f7f90fc7aed8c14562c104bd3bbc591dc50a6b9b1d9ca245678b7197ed55ac67

;;Optionally verify that that container is running:

docker ps

;;Output should be similar like this:

;; d:\devstation-workspace\projects\docker-devstation>docker ps
;; CONTAINER ID        IMAGE               COMMAND               CREATED                  STATUS              PORTS                  NAMES
;; f7f90fc7aed8        devbox              "/usr/sbin/sshd -D"   Less than a second ago   Up 41 seconds       127.0.0.1:22->22/tcp   zealous_morse


