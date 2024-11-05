# syntax=docker/dockerfile:1.4
FROM bitnami/minideb:latest

# Set workdir
WORKDIR /app

# Install dependencies and update container
RUN \
    apt update && \
    apt upgrade -y && \
    apt install -y \
        software-properties-common \
        ca-certificates \
        curl \
        wget \
    && \
    apt clean && \
    rm -rf /var/lib/apt/lists/*
