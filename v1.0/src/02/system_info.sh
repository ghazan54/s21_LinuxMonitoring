#!/bin/bash

HOSTNAME=$(hostname)

TIMEZONE=$(date +'%Z %:z')

USER=$(whoami)

OS=$(lsb_release -ds)
