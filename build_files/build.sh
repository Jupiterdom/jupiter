#!/bin/bash

set -ouex pipefail

# run additional scripts
source /ctx/build_files/vars.sh
/ctx/build_files/00-imageinfo.sh
/ctx/build_files/01-packages.sh
