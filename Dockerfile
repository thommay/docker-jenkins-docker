FROM jenkins:latest

USER root
RUN apt-get update && apt-get install -y ruby docker.io && rm -rf /var/lib/apt/lists/*

RUN groupadd -g 233 -o docker
RUN usermod -a -G users,docker jenkins
USER jenkins
