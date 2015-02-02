## Jenkins docker image with docker

To use:
```
docker run --rm --privileged -v  /var/lib/docker/:/var/lib/docker/ -p 8080:8080 --name jenkins thommay/jenkins-docker:latest
```
