#! /usr/bin/env bash

yum install -y epel-release
yum install -y make git golang
export GOPATH="/opt/go"
mkdir -p {$GOPATH/src/github.com/GoogleCloudPlatform,/target}
cd $GOPATH/src/github.com/GoogleCloudPlatform
git clone https://github.com/GoogleCloudPlatform/kubernetes
cd kubernetes
make
cp -f /opt/go/src/github.com/GoogleCloudPlatform/kubernetes/_output/go/bin/* /target
chmod +x /target/*
