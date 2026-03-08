FROM python:3.11-slim

# Install SSH client and useful tools
RUN apt-get update && \
    apt-get install -y --no-install-recommends \
        openssh-client \
        sshpass \
        git \
    && rm -rf /var/lib/apt/lists/*

# Install Ansible via pip
RUN pip install --no-cache-dir ansible

# Directory inside the container where your Ansible files will be mounted
# Volume mapping (. -> /ansible) is defined in docker-compose.yml
VOLUME /ansible
WORKDIR /ansible

# Start an interactive shell by default
ENTRYPOINT ["bash"]