#!/bin/bash

 docker run --rm=true -p 1812-1813:1812-1813/udp --add-host ipa.example.test:172.17.0.3 --name=mrad my-radius-image freeradius -X        
