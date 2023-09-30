#!/usr/bin/env bash

# setup safe directories for repo and submodules
ADD_SAFE=git config --global --add safe.directory

$ADD_SAFE $(pwd)
git submodule foreach "$ADD_SAFE \$(pwd)"