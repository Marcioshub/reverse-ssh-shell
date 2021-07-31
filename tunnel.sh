#!/bin/bash
createTunnel() {
    /usr/bin/bash -N -R <port>:localhost:22 root@<remoteserver>
    if [[ $? -eq 0 ]]; then
        echo Tunnel was created successfully
    else
        echo An error occurred creating a tunnel
    fi
}

/bin/pidof ssh
if [[ $? -ne 0 ]]; then
    echo Creating new tunnel connection
    createTunnel
fi