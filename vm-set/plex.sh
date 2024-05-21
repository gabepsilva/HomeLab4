#!/usr/bin/env bash

# Define variables
REPO_URL="https://github.com/gabepsilva/HomeLab4"
BRANCH="Plex_Server"
BASE_DIR="${HOME}/.ansible/pull/plex.i.psilva.org"
INVENTORY_PATH="${BASE_DIR}/inventory"
PLAYBOOK_PATH="${BASE_DIR}/plex/local.yml"
REQUIREMENTS_PATH="${BASE_DIR}/requirements.yml"

# Pull the latest code from the repository
git clone -b $BRANCH $REPO_URL $BASE_DIR

# Install the required roles
ansible-galaxy install -r $REQUIREMENTS_PATH

# Run the ansible-pull command
ansible-pull -U $REPO_URL -C $BRANCH -i $INVENTORY_PATH $PLAYBOOK_PATH
