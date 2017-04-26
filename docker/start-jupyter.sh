#!/usr/bin/env bash

THIS_FILEPATH=$(dirname $0)

# Serve the folder one level up
cd $THIS_FILEPATH/..

docker run --rm -v $(pwd):$(pwd) -w $(pwd) -p 8888:8888 -it caffe-jupyter
