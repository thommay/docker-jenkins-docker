FROM jenkins:latest

USER root
RUN apt-get update && apt-get install -y ruby docker.io && rm -rf /var/lib/apt/lists/*

RUN usermod -a -G users jenkins
USER jenkins
