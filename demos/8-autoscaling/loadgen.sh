#!/bin/bash

while true; do curl -s -o /dev/null "http://$HELLOWORLD_URL/hello"; done
