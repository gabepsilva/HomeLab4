#!/usr/bin/env bash

sudo apt-get update
sudo apt-get install -y ansible 

ansible-galaxy install geerlingguy.docker

ansible-pull -U https://github.com/gabepsilva/HomeLab4 -C Plex_Server -i ~/.ansible/pull/plex.i.psilva.org/inventory plex/main.yml


