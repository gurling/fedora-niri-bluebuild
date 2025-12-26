#!/usr/bin/env bash

set -euo pipefail

git clone https://gitlab.com/dwt1/multicolor-sddm-theme
cp -r multicolor-sddm-theme/ /usr/share/sddm/themes/
rm -rf multicolor-sddm-theme || true

