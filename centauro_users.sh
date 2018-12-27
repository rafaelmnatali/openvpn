#!/bin/bash
file='users.txt'
while read line; do
/home/ubuntu/openvpn-server-vagrant/add-client.sh $line
mv /root/client-configs/files/*.ovpn /tmp
done < $file