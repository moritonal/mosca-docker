#!/bin/bash

aedes adduser $USERNAME $PASSWORD --credentials ./credentials.json

aedes --host 0.0.0.0 --credentials ./credentials.json --protos ws --ws-port 80