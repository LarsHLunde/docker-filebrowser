#!/bin/bash

FILE=/script/filebrowser.json
if test -f "$FILE"; then
    mv /script/filebrowser.json /config/.
    echo "Docker Filebrowser has been installed"
    echo "Start the docker the normal way and it will start normally"
    exit 0
fi

/usr/local/bin/filebrowser -c /config/filebrowser.json
