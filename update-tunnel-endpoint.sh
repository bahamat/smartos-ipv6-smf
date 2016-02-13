#!/bin/bash

source /opt/custom/smf/ipv6-6in4.conf

curl "https://ipv4.tunnelbroker.net/nic/update?username=${HE_USER}&password=${UPDATE_KEY}&hostname=${TUNNEL_ID}"
