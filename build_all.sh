#!/bin/bash
PRV_KEY="$(cat ~/.ssh/id_rsa)"
PUB_KEY="$(cat ~/.ssh/id_rsa.pub)"

echo ""
echo "+-------------------------------+"
echo "| building ubuntu 20.04 sandbox |"
echo "+-------------------------------+"
echo ""
docker build . --build-arg ssh_prv_key="$PRV_KEY" --build-arg ssh_pub_key="$PUB_KEY" -t ubuntu_20_04_sandbox -f Dockerfile-ubuntu_20_04_sandbox

echo ""
echo "+-----------------------------+"
echo "| building ros noetic sandbox |"
echo "+-----------------------------+"
echo ""
docker build . --build-arg ssh_prv_key="$PRV_KEY" --build-arg ssh_pub_key="$PUB_KEY" -t ros_noetic_sandbox -f Dockerfile-ros_noetic_sandbox

echo ""
echo "+-------------------------------+"
echo "| building ros noetic workspace |"
echo "+-------------------------------+"
echo ""
docker build . --build-arg ssh_prv_key="$PRV_KEY" --build-arg ssh_pub_key="$PUB_KEY" -t ros_noetic_workspace -f Dockerfile-ros_noetic_workspace

