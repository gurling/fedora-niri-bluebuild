#!/usr/bin/env bash 

set -euo pipefail

#OPENSSL_DIR="/usr/bin"

dnf -y install rust cargo git luajit lua-lgi  gtk4 gtk-layer-shell gtk4-devel gtk4-layer-shell-devel dbus-devel pkgconf-pkg-config openssl-devel pulseaudio-libs-devel libinput-devel luajit-devel libevdev-devel kmod-devel systemd-udev systemd-udev

git clone https://github.com/jakestanger/ironbar.git
cd ironbar
#cargo build --release --no-default-features \
#	--features config+all,cli,battery,bluetooth,clock,label,tray,volume,sys_info,notifications,workspaces+niri,focused
cargo build --locked --release 
# change path to wherever you want to install
install target/release/ironbar /usr/bin/ironbar && echo "Ironbar Successfully installed."

dnf -y remove rust cargo git gtk4-devel gtk4-layer-shell-devel dbus-devel openssl-devel pulseaudio-libs-devel libinput-devel luajit-devel dbus-devel

dnf -y install gtk-layer-shell luajit lua-lgi pkgconf-pkg-config

rm -rf /root/.cargo/registry /root/.cargo/git /root/ionbar || true
#docker run -it -v '.:/app' ghcr.io/jakestanger/ironbar-build /bin/bash
#cd app
#cargo build

