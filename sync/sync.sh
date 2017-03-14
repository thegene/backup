#!/bin/bash

# only run if /source and /target exist
if [[ -d "/source" && -d "/target" ]]; then
  echo "Syncing directories"
  rsync -av --delete /source /target
else
  echo "Not syncing: source and / or target missing"
fi
