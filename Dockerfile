FROM ubuntu:20.04

ENV TZ=Asia/Kolkata \
    DEBIAN_FRONTEND=noninteractive

# Install dependencies
RUN apt-get update && apt-get install -y \
    s3fs \
    fuse \
    python3-pip \
    curl \
    && rm -rf /var/lib/apt/lists/*

RUN pip3 install conan-server

# Copy in your AWS credentials (OPTIONAL, or you can pass them as environment variables)
# COPY .aws/credentials /root/.aws/credentials

# Command to mount S3 bucket (can be done in container entrypoint or manually after start)

