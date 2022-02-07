
FROM nvcr.io/nvidia/tensorflow:20.12-tf1-py3

# declare the image name
ENV IMG_NAME=11.1.1-cudnn8-devel-ubuntu20.04 \
    # declare what jaxlib tag to use
    # if a CI/CD system is expected to pass in these arguments
    # the dockerfile should be modified accordingly
    # https://storage.googleapis.com/jax-releases/jax_releases.html
    JAXLIB_VERSION=0.1.69 \
    JUPYTER_TOKEN=''
    


# install python3-pip
RUN apt update && apt install python3-pip -y

RUN ln -sf /usr/bin/python3 /usr/bin/python && \
ln -sf /usr/bin/pip3 /usr/bin/pip

# install dependencies via pip
RUN pip install --no-cache-dir --upgrade numpy scipy six wheel matplotlib pandas
RUN pip install --no-cache-dir jaxlib==${JAXLIB_VERSION}+cuda111 -f https://storage.googleapis.com/jax-releases/jax_releases.html
RUN pip install --no-cache-dir jax==0.2.17
RUN pip install --no-cache-dir --upgrade trax flax dm-haiku optax chex jraph
# RUN pip install --no-cache-dir tensorflow-gpu==2.3.0

# install assorted utilities
RUN apt install -y git


EXPOSE 8888
#RUN pip install --no-cache-dir jupyterlab


ENTRYPOINT jupyter lab \
    --allow-root \
    --ServerApp.allow_root=True \
    --ServerApp.ip=0.0.0.0 \
    --no-browser \
    --ServerApp.trust_xheaders=True
    --ServerApp.disable_check_xsrf=True \
    --ServerApp.allow_remote_access=True \
    --ServerApp.allow_origin='*' \
    --ip=0.0.0.0 \
    --port=8888 \
    --ServerApp.token=$JUPYTER_TOKEN \
    --ServerApp.password=''