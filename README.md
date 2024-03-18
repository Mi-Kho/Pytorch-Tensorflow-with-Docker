# Pytorch & Tensorflow with GPU support using Docker

## Pytorch

<div align="center">
  <img src="https://miro.medium.com/v2/resize:fit:1200/1*4br4WmxNo0jkcsY796jGDQ.jpeg">
</div>


PyTorch is an open-source machine learning library primarily developed by Facebook's AI Research lab (FAIR). It is widely used for various machine learning tasks such as natural language processing, computer vision, reinforcement learning, and more.

See [github repo](https://github.com/pytorch/pytorch) and [Pytorch website](https://pytorch.org/) for more information.

## TensorFlow

<div align="center">
  <img src="https://www.tensorflow.org/images/tf_logo_social.png">
</div>


TensorFlow is an open-source machine learning framework developed by Google Brain team. It is one of the most popular and widely used frameworks for building and deploying machine learning models, particularly deep learning models. TensorFlow provides a comprehensive ecosystem of tools, libraries, and resources to facilitate various machine learning tasks.

See the [github repo](https://github.com/tensorflow/tensorflow) and [tensorflow](https://www.tensorflow.org/) for more information.


## Requirements

* A machine with nvidia GPU 
* ubuntu 20.04 installed on machine 
* Docker installed on this machine or another machine for building image
* nvidia driver 520 or above

This packages should be installed on Docker Container:

* python3
* python3-pip
* TensorFlow
* torch
* torchvision
* torchaudio

## Compatibality Table

| Version          | Python version | cuDNN | CUDA | NVIDIA driver |
|------------------|----------------|-------|------|---------------|
| tensorflow-2.16.1| 3.9-3.12       | 8.9   | 12.3 | 545 or above  |
| tensorflow-2.15.0| 3.9-3.11       | 8.9   | 12.2 | 545 or above  |
| tensorflow-2.14.0| 3.9-3.11       | 8.7   | 11.8 | 520 or above  |
| tensorflow-2.13.0| 3.8-3.11       | 8.6   | 11.8 | Not tested    |
| tensorflow-2.12.0| 3.8-3.11       | 8.6   | 11.8 | Not tested    |

[Suggested version](https://www.nvidia.com/download/index.aspx?lang=en-us) for a lot of nvidia GPUs is 535.


## Getting Started 

Initially prepare host machine

* install nvidia driver 

```
sudo apt-get update -y
sudo apt-get install -y nvidia-driver-535 nvidia-utils-535

# REBOOT SYSTEM

sudo apt-mark hold nvdia-driver-535 

```


