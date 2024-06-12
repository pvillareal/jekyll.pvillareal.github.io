FROM ubuntu:jammy

ARG DEBIAN_FRONTEND=noninteractive

# Update
RUN apt-get -y update --fix-missing && \
    apt-get upgrade -y && \
    apt-get --no-install-recommends install -y apt-utils

# Install Jekyll prerequisites
RUN apt-get install -y ruby-full build-essential zlib1g-dev

# Install Jekyll and Bundler
RUN gem install jekyll bundler

# Clean up
RUN rm -rf /var/lib/apt/lists/*

# Default dir
WORKDIR /app
