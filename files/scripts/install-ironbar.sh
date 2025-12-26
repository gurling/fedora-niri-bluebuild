#!/usr/bin/env bash 

set -euo pipefail

cargo install ironbar \
	--locked \
	--root /usr \

rm -rf /root/.cargo/registry /root/.cargo/git || true


#docker run -it -v '.:/app' ghcr.io/jakestanger/ironbar-build /bin/bash
#cd app
#cargo build

