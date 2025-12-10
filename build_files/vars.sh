#!/usr/bin/env bash

set -ouex pipefail

TIMESTAMP="$(date +"%m%d%Y%H%M%S")"
FEDORA_MAJOR_VERSION="43"

vars=(
  BASE_IMAGE_NAME="kinoite"
  IMAGE_NAME="jupiter-kinoite"
  IMAGE_PRETTY_NAME="Jupiter"
  CODE_NAME="Jupiter-terraformed"
  IMAGE_LIKE="fedora"
  HOME_URL="https://github.com/Jupiterdom/jupiter"
  DOCUMENTATION_URL="https://github.com/Jupiterdom/jupiter"
  SUPPORT_URL="https://github.com/Jupiterdom/Jupiter/issues/"
  BUG_SUPPORT_URL="https://github.com/Jupiterdom/Jupiter/issues/"
  VERSION="${FEDORA_MAJOR_VERSION}-${TIMESTAMP}"
  DEFAULT_TAG="stable"
)

for var in ${vars[@]}; do
  set +u
  echo "$var" >>"$GITHUB_ENV" || true
  set -u
  export "$var"
done
