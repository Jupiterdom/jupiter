#!/bin/bash

set -ouex pipefail

# run additional scripts
source /ctx/build_files/vars.sh
/ctx/build_files/00-imageinfo.sh
/ctx/build_files/01-packages.sh
/ctx/build_files/02-branding.sh
/ctx/build_files/03-nerdfonts.sh
