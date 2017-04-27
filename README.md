# VGG16 and VGG19 caffe net

Uses the [VGG16](https://gist.github.com/ksimonyan/211839e770f7b538e2d8#file-readme-md) and [VGG19](https://gist.github.com/ksimonyan/3785162f95cd2d5fee77#file-readme-md) nets from the modelzoo. Minor changes in the `*.prototxt` to adapt it to the new caffe version.

See [net.ipynb](net.ipynb).

## Instructions
```shell
# Download models 
wget --show-progress -P 'model/' 'http://www.robots.ox.ac.uk/~vgg/software/very_deep/caffe/VGG_ILSVRC_16_layers.caffemodel'
wget --show-progress -P 'model/' 'http://www.robots.ox.ac.uk/~vgg/software/very_deep/caffe/VGG_ILSVRC_19_layers.caffemodel'

# Convert models to new caffe format (caffe needed)
# (Not strictly needed. Removes deprecation notice)
upgrade_net_proto_binary MODEL.caffemodel MODEL.new.caffemodel

# Build docker image
docker build docker/ -t caffe-jupyter

# Start jupyter notebook
./docker/start-jupyter.sh

# Open browser at 127.0.0.1:8888
# Enter 'a' as the password to enter the jupyter env

# Maybe you have to adapt some paths to the models. See net.ipynb

# Docker terminal to image to execute "upgrade_net_proto_binary" etc. and run python files normally
docker run --entrypoint  --rm -v $(pwd):$(pwd) -w $(pwd) -it caffe-jupyter bash
```
