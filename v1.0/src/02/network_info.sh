#!/bin/bash

interface=$(ip -o -4 route show to default | awk '{print $5}')
if [[ -n "$interface" ]]; then
    IP=$(ip -4 addr show dev "$interface" | awk '/inet / {print $2}')
    MASK=$(ip -4 addr show dev "$interface" | awk '/inet / {print $4}')
else
    IP="N/A"
    MASK="N/A"
fi

GATEWAY=$(ip route | awk '/default/ {print $3}')
