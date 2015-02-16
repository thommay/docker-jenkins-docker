## Jenkins docker image with docker

To use:
```
docker run  --privileged -v /var/run/docker.sock:/var/run/docker.sock -v  /var/lib/docker/:/var/lib/docker/ -p 8080:8080 --name jenkins -d -v /var/jenkins_home:/var/jenkins_home --restart=always thommay/jenkins-docker:latest
```
