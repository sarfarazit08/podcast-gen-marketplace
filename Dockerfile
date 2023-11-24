# Use the latest official Ubuntu image as the base image
FROM ubuntu:latest

# Set the working directory
WORKDIR /

# Update APT and install necessary packages
RUN apt-get update && \
    apt-get install -y \
    python3.10 \
    python3-pip \
    git

# Install pyyaml using pip3
RUN pip3 install pyyaml

# Copy feed.py to /usr/bin/feed.py in the container
COPY feed.py /usr/bin/feed.py

# Copy the entrypoint.sh script to the container
COPY entrypoint.sh /entrypoint.sh

# Give execute permissions to entrypoint.sh
RUN chmod +x /entrypoint.sh

# Define the entry point for the container
ENTRYPOINT ["/entrypoint.sh"]
