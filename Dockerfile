FROM jenkins:latest

USER root
RUN apt-get update && apt-get install -y ruby docker.io && rm -rf /var/lib/apt/lists/*

RUN groupmod -g 233 docker
RUN usermod -a -G users,docker jenkins
COPY kubr-0.0.5.gem /root/
RUN gem install -N /root/kubr-0.0.5.gem

USER jenkins
