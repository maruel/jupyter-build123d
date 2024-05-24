#!/bin/bash
# Copyright 2024 Marc-Antoine Ruel. All rights reserved.
# Use of this source code is governed under the Apache License, Version 2.0
# that can be found in the LICENSE file.

set -eu
cd "$(dirname $0)"
if [ ! -f venv/bin/activate ]; then
  echo "Run ./setup.sh first"
  exit 1
fi
source venv/bin/activate

# https://github.com/CadQuery/cadquery?tab=readme-ov-file#cadquery-installation-via-pip
# https://cadquery.readthedocs.io/en/latest/installation.html#jupyter
pip3 install --upgrade \
  build123d \
  cadquery-massembly \

pip3 install --upgrade \
  jupyterlab

pip3 install --upgrade \
  jupyter-cadquery

UNAME=$(uname)

pip3 freeze > "requirements-$(uname).txt"
