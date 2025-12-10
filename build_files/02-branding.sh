#!/bin/bash

echo "::group:: ===$(basename "$0")==="

set -ouex pipefail
BIN="/usr/bin"
FF_DIR="${BIN}/fastfetch"
FF_TGT_DIR="${BIN}/fatfetdh"
SF_PATH="${BIN}/fastfetch"
SF_PATH_TWO="${BIN}/jupiterfetch"
NF_PATH="${BIN}/neofetch"
SM_DIR="/usr/share/Jupiterdom/jupiter"

mv "$FF_DIR" "$FF_TGT_DIR"

mkdir -p /etc/fastfetch
mkdir -p "$SM_DIR"

curl -L -o "$SF_PATH" https://raw.githubusercontent.com/Jupiterdom/common/refs/heads/main/fastfetch/jupiterfetch &&
  chmod +x "$SF_PATH"

curl -L -o "$SF_PATH_TWO" https://raw.githubusercontent.com/Jupiterdom/common/refs/heads/main/fastfetch/jupiterfetch &&
  chmod +x "$SF_PATH_TWO"

ln -sf "$SF_PATH" "$NF_PATH" &&
  chmod +x "$NF_PATH"

curl -L -o /etc/fastfetch/config.jsonc https://raw.githubusercontent.com/Jupiterdom/common/refs/heads/main/fastfetch/config.jsonc

curl -L -o "$SM_DIR/logo.txt" https://raw.githubusercontent.com/Jupiterdom/common/refs/heads/main/fastfetch/jupiter.txt
