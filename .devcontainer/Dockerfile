# Use Ubuntu 22.04 as base image
FROM ubuntu:22.04

# Install necessary packages
RUN apt-get update && \
    apt-get install -y software-properties-common && \
    add-apt-repository ppa:deadsnakes/ppa && \
    apt-get update && \
    DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends \
    python3.8 \
    python3-pip && \
    rm -rf /var/lib/apt/lists/*

# Install git 
RUN apt-get update && \
    apt-get install -y git && \
    apt-get clean

# Check if Nvidia GPU exists
RUN apt-get update && \
    DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends \
    python3 \
    python3-pip && \
    rm -rf /var/lib/apt/lists/*

RUN if lspci | grep -i nvidia; then \
        echo "Nvidia GPU found"; \
        apt-get update && \
        DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends \
        cuda \
        && rm -rf /var/lib/apt/lists/*; \
    else \
        echo "Nvidia GPU not found"; \
    fi
