FROM debian:12-slim
RUN apt-get update
RUN apt-get install -y wget
RUN wget -q https://raw.githubusercontent.com/filebrowser/get/master/get.sh 
EXPOSE 8080/tcp
CMD ["bash"]
