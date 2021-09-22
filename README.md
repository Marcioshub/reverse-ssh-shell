# Reverse SSH Tunnel | bash script

Creates a reverse ssh shell from a raspberrypi to a remote linux server.
Remember to replace the port number and remote linux server ip address with your own.

Note: Depending on your server configuration you may also need to configure ssh keys and change firewall settings.

## Run

```bash
# raspberry pi
chmod 700 tunnel.sh
./tunnel.sh

# optional - run this script every minute
crontab -e
# select nano then save the following
*/1 * * * * ~/tunnel.sh > tunnel.log 2>&1
```

```bash
# linux server
ssh -p PORT pi@localhost
```
