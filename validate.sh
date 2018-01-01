#!/bin/sh
ansible-playbook sample.yml -i hosts -e "descriptor=conf/app-db.json"
