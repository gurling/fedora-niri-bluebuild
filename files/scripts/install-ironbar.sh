#!/usr/bin/env bash 

set -euo pipefail

OPENSSL_DIR="/usr/bin/openssl"

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


#docker run -it -v '.:/app' ghcr.io/jakestanger/ironbar-build /bin/bash
#cd app
#cargo build

