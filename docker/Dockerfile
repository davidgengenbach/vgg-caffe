FROM bvlc/caffe:cpu

RUN apt-get update && echo "Yes"

RUN pip install jupyter

RUN jupyter notebook --generate-config --allow-root
# Add dummy password (= 'a')
RUN echo "c.NotebookApp.password = u'sha1:6fb9951a0bd6:de253056f628837e8e483029c557dc1a2964531c'" >> /root/.jupyter/jupyter_notebook_config.py

EXPOSE 8888

ENTRYPOINT jupyter notebook --allow-root --ip=0.0.0.0