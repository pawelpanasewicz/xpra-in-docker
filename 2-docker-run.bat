REM Run it from windows CMD

docker run -d -p 127.0.0.1:22:22 devbox


REM Output should be something like this:
REM d:\devstation-workspace\projects\docker-devstation>docker run -d -p 127.0.0.1:22:22 devbox
REM f7f90fc7aed8c14562c104bd3bbc591dc50a6b9b1d9ca245678b7197ed55ac67

REM Optionally verify that that container is running:

docker ps

REM Output should be similar like this:

REM d:\devstation-workspace\projects\docker-devstation>docker ps
REM CONTAINER ID        IMAGE               COMMAND               CREATED                  STATUS              PORTS                  NAMES
REM f7f90fc7aed8        devbox              "/usr/sbin/sshd -D"   Less than a second ago   Up 41 seconds       127.0.0.1:22->22/tcp   zealous_morse


