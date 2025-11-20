# Build outside of Docker and then run in container

`docker build -t demoweb .`

`docker run -itd demoweb .`

`docker run -itd -p 8080:8080 demoweb`

`docker run -itd --name demoweb -p 8080:8080 demoweb`

# Build and run inside Docker

`docker build -t demowebbuild -f DockerfileBuild .`

`docker run -itd -p 8080:8080 demowebbuild`

`docker run -itd -p 8080:8080 --name demowebbuild demowebbuild`

