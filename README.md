# VGG16 caffe net

Uses the [VGG16 net from the modelzoo](https://gist.github.com/ksimonyan/211839e770f7b538e2d8#file-readme-md). Minor changes in the `*.prototxt` to adapt it to the new caffe version.

See [net.ipynb](net.ipynb).

## Instructions
```shell
# Download model
wget --show-progress -O 'data/VGG_ILSVRC_16_layers.caffemodel' 'http://www.robots.ox.ac.uk/~vgg/software/very_deep/caffe/VGG_ILSVRC_16_layers.caffemodel'

# Convert model to new caffe format (caffe needed)
# (Not strictly needed. Removes deprecation notice)
upgrade_net_proto_binary MODEL.caffemodel MODEL.new.caffemodel

# Build docker image
cd docker
docker build . -t caffe-jupyter
cd ..

# Start jupyter notebook
./docker/start-jupyter.sh
```
