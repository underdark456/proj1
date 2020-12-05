#!/bin/bash

make sync | tee /home/user/proj1/logs/sync_$(date '+%Y-%m-%d-%H').log
make build | tee /home/user/proj1/logs/build_$(date '+%Y-%m-%d-%H').log
make deploy | tee /home/user/proj1/logs/deploy_$(date '+%Y-%m-%d-%H').log
