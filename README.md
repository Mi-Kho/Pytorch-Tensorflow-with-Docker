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
* python3
* python3-pip
* Docker installed on machine
* nvidia driver 520 or above

This packages should be installed on Docker Container:

* python3
* python3-pip
* TensorFlow
* torch
* torchvision
* torchaudio

| Version          | Python version | Compiler    | Build tools | cuDNN | CUDA |
|------------------|----------------|-------------|-------------|-------|------|
| tensorflow-2.16.1| 3.9-3.12       | Clang 17.0.6| Bazel 6.5.0 | 8.9   | 12.3 |
| tensorflow-2.15.0| 3.9-3.11       | Clang 16.0.0| Bazel 6.1.0 | 8.9   | 12.2 |
| tensorflow-2.14.0| 3.9-3.11       | Clang 16.0.0| Bazel 6.1.0 | 8.7   | 11.8 |
| tensorflow-2.13.0| 3.8-3.11       | Clang 16.0.0| Bazel 5.3.0 | 8.6   | 11.8 |
| tensorflow-2.12.0| 3.8-3.11       | GCC 9.3.1   | Bazel 5.3.0 | 8.6   | 11.8 |
| tensorflow-2.11.0| 3.7-3.10       | GCC 9.3.1   | Bazel 5.3.0 | 8.1   | 11.2 |
| tensorflow-2.10.0| 3.7-3.10       | GCC 9.3.1   | Bazel 5.1.1 | 8.1   | 11.2 |
| tensorflow-2.9.0 | 3.7-3.10       | GCC 9.3.1   | Bazel 5.0.0 | 8.1   | 11.2 |
| tensorflow-2.8.0 | 3.7-3.10       | GCC 7.3.1   | Bazel 4.2.1 | 8.1   | 11.2 |
| tensorflow-2.7.0 | 3.7-3.9        | GCC 7.3.1   | Bazel 3.7.2 | 8.1   | 11.2 |
| tensorflow-2.6.0 | 3.6-3.9        | GCC 7.3.1   | Bazel 3.7.2 | 8.1   | 11.2 |
| tensorflow-2.5.0 | 3.6-3.9        | GCC 7.3.1   | Bazel 3.7.2 | 8.1   | 11.2 |
| tensorflow-2.4.0 | 3.6-3.8        | GCC 7.3.1   | Bazel 3.1.0 | 8.0   | 11.0 |
| tensorflow-2.3.0 | 3.5-3.8        | GCC 7.3.1   | Bazel 3.1.0 | 7.6   | 10.1 |
| tensorflow-2.2.0 | 3.5-3.8        | GCC 7.3.1   | Bazel 2.0.0 | 7.6   | 10.1 |
| tensorflow-2.1.0 | 2.7, 3.5-3.7   | GCC 7.3.1   | Bazel 0.27.1| 7.6   | 10.1 |
| tensorflow-2.0.0 | 2.7, 3.3-3.7   | GCC 7.3.1   | Bazel 0.26.1| 7.4   | 10.0 |
| tensorflow_gpu-1.15.0 | 2.7, 3.3-3.7   | GCC 7.3.1   | Bazel 0.26.1| 7.4   | 10.0 |
| tensorflow_gpu-1.14.0 | 2.7, 3.3-3.7   | GCC 4.8     | Bazel 0.24.1| 7.4   | 10.0 |
| tensorflow_gpu-1.13.1 | 2.7, 3.3-3.7   | GCC 4.8     | Bazel 0.19.2| 7.4   | 10.0 |
| tensorflow_gpu-1.12.0 | 2.7, 3.3-3.6   | GCC 4.8     | Bazel 0.15.0| 7     | 9    |
| tensorflow_gpu-1.11.0 | 2.7, 3.3-3.6   | GCC 4.8     | Bazel 0.15.0| 7     | 9    |
| tensorflow_gpu-1.10.0 | 2.7, 3.3-3.6   | GCC 4.8     | Bazel 0.15.0| 7     | 9    |
| tensorflow_gpu-1.9.0  | 2.7, 3.3-3.6   | GCC 4.8     | Bazel 0.11.0| 7     | 9    |
| tensorflow_gpu-1.8.0  | 2.7, 3.3-3.6   | GCC 4.8     | Bazel 0.10.0| 7     | 9    |
| tensorflow_gpu-1.7.0  | 2.7, 3.3-3.6   | GCC 4.8     | Bazel 0.9.0 | 7     | 9    |
| tensorflow_gpu-1.6.0  | 2.7, 3.3-3.6   | GCC 4.8     | Bazel 0.9.0 | 7     | 9    |
| tensorflow_gpu-1.5.0  | 2.7, 3.3-3.6   | GCC 4.8     | Bazel 0.8.0 | 7     | 9    |
| tensorflow_gpu-1.4.0  | 2.7, 3.3-3.6   | GCC 4.8     | Bazel 0.5.4 | 6     | 8    |
| tensorflow_gpu-1.3.0  | 2.7, 3.3-3.6   | GCC 4.8     | Bazel 0.4.5 | 6     | 8    |
| tensorflow_gpu-1.2.0  | 2.7, 3.3-3.6   | GCC 4.8     | Bazel 0.4.5 | 5.1   | 8    |
| tensorflow_gpu-1.1.0  | 2.7, 3.3-3.6   | GCC 4.8     | Bazel 0.4.2 | 5.1   | 8    |
| tensorflow_gpu-1.0.0  | 2.7, 3.3-3.6   | GCC 4.8     | Bazel 0.4.2 | 5.1   | 8    |







