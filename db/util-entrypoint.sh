#!/bin/bash
env $(/secrets/secrets.sh | tr "\\n" " ") $@
