# Docker Filebrowser
## This docker does not work yet
A debian based docker for filebrowser

## How to install
```
git clone https://github.com/LarsHLunde/docker-filebrowser.git
cd docker-filebrowser
docker build -t filebrowser .
docker run -t -p 8080:8080/tcp --name filebrowser filebrowser
```
