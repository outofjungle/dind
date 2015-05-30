#!/bin/bash

cp ../wrapdocker .
docker build --force-rm=true --tag dind_centos .
rm wrapdocker
