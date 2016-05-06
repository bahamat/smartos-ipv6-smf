#!/bin/bash

api="https://ipv4.tunnelbroker.net/nic/update"

curl -s -i "${api}?username=${HE_USER}&password=${UPDATE_KEY}&hostname=${TUNNEL_ID}"
