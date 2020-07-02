#!/bin/bash
set -e

# Change uid and gid of node user so it matches ownership of current dir
if [ "$MAP_UID" != "no" ]; then
    if [ ! -d "$MAP_UID" ]; then
        MAP_UID=$PWD
    fi

    uid=$(id -u)
    gid=$(id -g)
    ouid=$(stat -c '%u' "/opt/vimtx")
    ogid=$(stat -c '%g' "/opt/vimtx")

    if [ $uid = $ouid -a $gid = $ogid ]; then
        echo "Good permission!"
    else
        echo "dev ---> UID = $uid / GID = $gid"
        export USER=dev
        usermod -u $uid dev 2> /dev/null && {
          groupmod -g $gid dev 2> /dev/null || usermod -a -G $gid dev
        }
        echo "**** Fix Permission... "
        chown -R dev /opt/vimtx && chgrp -R dev /opt/vimtx
        chown -R dev /home/dev && chgrp -R dev /home/dev 
        echo "**** Fix Permission finished... "
    fi
fi

exec $@
