# Docker Filebrowser
## This docker does not work yet
A debian based docker for filebrowser

## How to install
```
git clone https://github.com/LarsHLunde/docker-filebrowser.git
cd docker-filebrowser
docker build -t filebrowser .
docker run -t \
  -v /root/filebrowser-config:/config \
  -v /storage:/storage \
  -p 8080:8080 \
  --name filebrowser \
  --restart unless-stopped \
  filebrowser
docker start filebrowser
```

## Nginx passthrough
I assume you're not just running one application on the server.  
So to run it through Nginx, preferably with signed TLS, here's the config:  
```
        location /rutorrent/ {
                rewrite ^/rutorrent(.*) $1 break;
                proxy_pass http://127.0.0.1:8080;
                client_max_body_size 100M;
                auth_basic "Restricted Content";
                auth_basic_user_file /etc/nginx/.htpasswd;
        }

```
