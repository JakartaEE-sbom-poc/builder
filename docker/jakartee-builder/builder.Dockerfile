FROM openjdk:11.0.11-9-jdk-buster as build_jsonnet
WORKDIR /builder

ARG USER_ID
ARG GROUP_ID

RUN apt update && apt install -y --no-install-recommends maven curl jq git iputils-ping wget gnupg coreutils openssl

# Create a user and group in the container with matching IDs
RUN groupadd -g $GROUP_ID hostgroup && \
    useradd -u $USER_ID -g $GROUP_ID -ms /bin/bash hostuser