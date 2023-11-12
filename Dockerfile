FROM debian:12-slim
RUN apt-get update \
    apt-get install -y curl \
    curl -fsSL https://raw.githubusercontent.com/filebrowser/get/master/get.sh | bash

CMD ["bash"]
