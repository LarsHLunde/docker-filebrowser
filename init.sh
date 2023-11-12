#!/bin/bash

FILE=/script/filebrowser.json
if test -f "$FILE"; then
    mv /script/filebrowser.json /config/.
fi

/usr/local/bin/filebrowser -c /config/filebrowser.json
