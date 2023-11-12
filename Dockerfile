FROM debian:12-slim
RUN apt-get update
RUN apt-get install -y wget
RUN wget -q https://raw.githubusercontent.com/filebrowser/get/master/get.sh 
RUN bash get.sh
RUN mkdir /storage
RUN mkdir /config
ADD filebrowser.json /config/
VOLUME ["/storage", "/config"]
EXPOSE 8080/tcp
ENTRYPOINT ["/usr/local/bin/filebrowser", "-c", "/config/filebrowser.json"]
