FROM tensorflow/tensorflow:2.14.0-gpu

# Set environment variables
ENV DEBIAN_FRONTEND=noninteractive

# Install system dependencies
RUN apt-get update && \
        apt-get install -y \
        python3-pip \
        python3-dev \
        python3-opencv
RUN apt-get install -y libglib2.0-0
# Install any python packages you need

# Upgrade pip
RUN python3 -m pip install --upgrade pip

# Install PyTorch and torchvision

RUN pip3 install torch torchvision torchaudio --index-url https://download.pytorch.org/whl/cu118

RUN apt-get update && apt-get install -y --no-install-recommends \
    libcudnn8=8.7.0.84-1+cuda11.8 \
    && apt-mark hold libcudnn8=8.7.0.84-1+cuda11.8 \
    && apt-get autoremove \
    && rm -rf /var/lib/apt/lists/*


# Set the working directory
WORKDIR /app

# Set the entrypoint
ENTRYPOINT [ "python3" ]



