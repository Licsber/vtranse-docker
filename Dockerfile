FROM nvcr.io/nvidia/tensorflow:20.06-tf1-py3

LABEL maintainer="Licsber <licsber@njit.edu.cn>"

RUN DEBIAN_FORNTEND=noninteractive apt update \
        && apt install -y --no-install-recommends libgl1-mesa-glx \
        && rm -rf /var/lib/apt/lists/

RUN pip install -U pip \
        && pip install nvidia-pyindex==1.0.5 \
        && pip install nvidia-tensorboard==1.15.0+nv20.11 \
        && pip install xlwt opencv-python easydict \
                nvidia-tensorflow[horovod] \
        && rm -rf /root/.cache/
