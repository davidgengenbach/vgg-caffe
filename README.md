# VGG16 caffe net

See [net.ipynb](net.ipynb).

## Instructions
```shell
# Download model (TODO)

# Convert model to new caffe format (caffe needed)
# (Not strictly needed. Removed deprecation notices)
upgrade_net_proto_binary MODEL.caffemodel MODEL.new.caffemodel

# Build docker image
cd docker
docker build . -t caffe-jupyter
cd ..

# Start jupyter notebook
./docker/start-jupyter.sh
```
