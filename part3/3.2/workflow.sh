#!/bin/bash
REPOSITORY=$1
NAME=$2

git clone $REPOSITORY $NAME
cd $NAME
docker build . -t ionax/$NAME
docker login -u=ionax -p=a3854b14-481d-4dc2-b389-e3b6668cfe16
docker push ionax/$NAME
