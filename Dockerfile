FROM ubuntu:latest

RUN apt update

RUN apt install  openssh-server sudo -y

RUN useradd -rm -d /home/ubuntu -s /bin/bash -g root -G sudo -u 1000 bunny 

RUN usermod -aG sudo bunny

RUN service ssh start

RUN  echo 'bunny:Dhokako1an@' | chpasswd

EXPOSE 22

CMD ["/usr/sbin/sshd","-D"]