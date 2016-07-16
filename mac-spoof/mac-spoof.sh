#!/bin/bash

NEW_MAC_ADD=$(openssl rand -hex 6 | sed 's/\(..\)/\1:/g; s/.$//')

`sudo ifconfig en0 ether ${NEW_MAC_ADD}`
