#!/usr/bin/env bash
set -euo pipefail

# directory of the script
cd "${0%/*}"

# Build the container
podman build --tag "ghcr.io/cscfi/octave:9.1.0" -f octave.docker

# Login to GitHub container registry
# Prompts for an access token
echo "Supply a GitHub access token:"
podman login -u cscfi ghcr.io

# Push the container
podman push "ghcr.io/cscfi/octave:9.1.0"
