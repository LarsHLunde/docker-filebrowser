FROM debian:12-slim
RUN apt-get update \
    apt-get install -y wget \
    wget https://raw.githubusercontent.com/filebrowser/get/master/get.sh 
CMD ["bash"]
