#!/usr/bin/env bash

set -euo pipefail

theme="multicolor-sddm-theme"

background="png/palenight-01.png"

font="Firacode Nerd Font"


git clone https://gitlab.com/dwt1/multicolor-sddm-theme
cp -r multicolor-sddm-theme/ /usr/share/sddm/themes/
rm -rf multicolor-sddm-theme || true

sed -i "s/^CurrentTheme=.*/CurrentTheme=$theme/" /etc/sddm.conf

sed -i "s/^background=.*/background=$background/" /usr/share/sddm/themes/multicolor-sddm-theme/theme.conf

sed -i "s/^displayFont=.*/displayFont=$font/" /usr/share/sddm/themes/multicolor-sddm-theme/theme.conf


