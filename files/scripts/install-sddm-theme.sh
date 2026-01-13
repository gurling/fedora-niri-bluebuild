#!/usr/bin/env bash

set -euo pipefail

theme="where_is_my_sddm_theme"

git clone https://github.com/stepanzubkov/where-is-my-sddm-theme.git

sudo cp -r where-is-my-sddm-theme/where_is_my_sddm_theme /usr/share/sddm/themes

rm -rf where-is-my-sddm-theme || true

sed -i "s/^#Current=.*/Current=$theme/" /etc/sddm.conf

git clone https://github.com/catppuccin/where-is-my-sddm-theme.git

mv where-is-my-sddm-theme/themes/catppuccin-frappe.conf /usr/share/sddm/themes/where_is_my_sddm_theme/theme.conf

rm -rf where-is-my-sddm-theme || true
