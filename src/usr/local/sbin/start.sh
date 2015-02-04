#! /usr/bin/env bash

BRANCH=${1:-master}

yum install -y epel-release
yum install -y make git golang
export GOPATH="/opt/go"
mkdir -p {$GOPATH/src/github.com/GoogleCloudPlatform,/target}
cd $GOPATH/src/github.com/GoogleCloudPlatform
git clone --depth 1 https://github.com/GoogleCloudPlatform/kubernetes --branch $BRANCH --single-branch kubernetes
cd kubernetes
make
cp -f /opt/go/src/github.com/GoogleCloudPlatform/kubernetes/_output/local/go/bin/* /target
echo "$(git log -n 1)" > /target/.revision
chmod +x /target/*
