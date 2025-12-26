#!/usr/bin/env bash 

set -euo pipefail

#OPENSSL_DIR="/usr/bin"

dnf -y install rust cargo git luajit lua-lgi  gtk4 gtk-layer-shell gtk4-devel gtk4-layer-shell-devel dbus-devel pkgconf-pkg-config openssl-devel pulseaudio-libs-devel libinput-devel luajit-devel

git clone https://github.com/jakestanger/ironbar.git
cd ironbar
cargo build --release
# change path to wherever you want to install
install target/release/ironbar /usr/bin/ironbar


#cargo install ironbar \
#	--locked \
#	--root /usr \
#

rm -rf /root/.cargo/registry /root/.cargo/git /root/ionbar || true

sudo dnf -y remove rust cargo git gtk4-devel gtk4-layer-shell-devel dbus-devel pkgconf-pkg-config openssl-devel pulseaudio-libs-devel libinput-devel luajit-devel

#docker run -it -v '.:/app' ghcr.io/jakestanger/ironbar-build /bin/bash
#cd app
#cargo build

