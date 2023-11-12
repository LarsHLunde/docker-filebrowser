FROM debian:12-slim
RUN apt-get update
RUN apt-get install -y wget
RUN wget https://raw.githubusercontent.com/filebrowser/get/master/get.sh 
CMD ["bash"]
