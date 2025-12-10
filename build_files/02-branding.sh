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
BG_DIR="/usr/share/backgrounds/Jupiterdom"
mv "$FF_DIR" "$FF_TGT_DIR"

mkdir -p /etc/fastfetch
mkdir -p "$SM_DIR" "$BG_DIR"

curl -L -o "$SF_PATH" https://raw.githubusercontent.com/Jupiterdom/common/refs/heads/main/fastfetch/jupiterfetch &&
  chmod +x "$SF_PATH"

curl -L -o "$SF_PATH_TWO" https://raw.githubusercontent.com/Jupiterdom/common/refs/heads/main/fastfetch/jupiterfetch &&
  chmod +x "$SF_PATH_TWO"

ln -sf "$SF_PATH" "$NF_PATH" &&
  chmod +x "$NF_PATH"

curl -L -o /etc/fastfetch/config.jsonc https://raw.githubusercontent.com/Jupiterdom/common/refs/heads/main/fastfetch/config.jsonc

curl -L -o "$SM_DIR/logo.txt" https://raw.githubusercontent.com/Jupiterdom/common/refs/heads/main/fastfetch/jupiter.txt

curl -L -o "$BG_DIR/jupiter.jxl" https://github.com/Jupiterdom/common/raw/refs/heads/main/wallpaper/jupiter.jxl
curl -L -o "$BG_DIR/default.xml" https://github.com/Jupiterdom/common/raw/refs/heads/main/wallpaper/default.xml

ln -sf "$BG_DIR/jupiter.jxl" /usr/share/backgrounds/default.jxl
ln -sf "$BG_DIR/jupiter.jxl" /usr/share/backgrounds/default-dark.jxl
ln -sf "$BG_DIR/default.xml" /usr/share/backgrounds/default.xml
