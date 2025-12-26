#!/usr/bin/env bash 

set -euo pipefail

#OPENSSL_DIR="/usr/bin"

dnf -y install rust cargo git luajit lua-lgi  gtk4 gtk-layer-shell gtk4-devel gtk4-layer-shell-devel dbus-devel pkgconf-pkg-config openssl-devel pulseaudio-libs-devel libinput-devel luajit-devel libevdev-devel kmod-devel systemd-udev systemd-udev

git clone https://github.com/jakestanger/ironbar.git
cd ironbar
cargo build --release --no-default-features \
	--features config+all,cli,battery,bluetooth,clock,label,tray,volume,sys_info,notifications,workspaces+niri
# change path to wherever you want to install
install target/release/ironbar /usr/bin/ironbar


#cargo install ironbar \
#	--locked \
#	--root /usr \
#


dnf -y remove rust cargo git gtk4-devel gtk4-layer-shell-devel dbus-devel pkgconf-pkg-config openssl-devel pulseaudio-libs-devel libinput-devel luajit-devel libevdev-devel kmod-devel systemd-udev

rm -rf /root/.cargo/registry /root/.cargo/git /root/ionbar || true
#docker run -it -v '.:/app' ghcr.io/jakestanger/ironbar-build /bin/bash
#cd app
#cargo build

