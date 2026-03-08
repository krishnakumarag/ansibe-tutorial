# Ansible Tutorial

A Docker-based environment for learning and running Ansible playbooks.

## Prerequisites

- [Docker](https://docs.docker.com/get-docker/)
- [Docker Compose](https://docs.docker.com/compose/install/)

## Project Structure

```
.
├── Dockerfile          # Ansible + SSH client image
├── docker-compose.yml  # Service definition
├── ansible-files/      # Your playbooks, inventories, and roles
└── README.md
```

## Quick Start

1. **Build and run the container:**

   ```bash
   docker compose up -d --build
   ```

2. **Open an interactive shell inside the container:**

   ```bash
   docker compose exec ansible bash
   ```

3. **Run Ansible commands** from inside the container (working directory is `/ansible`):

   ```bash
   ansible --version
   ansible-playbook playbook.yml
   ```

## Volume Mapping

The `ansible-files` directory is mounted at `/ansible` inside the container. Any changes you make to files in `ansible-files` are immediately available in the container.
