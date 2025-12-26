#!/usr/bin/env bash 

set -euo pipefail

docker run -it -v '.:/app' ghcr.io/jakestanger/ironbar-build /bin/bash
cd app
cargo build

rm -rf /root/app /root/.cargo/registry /root/.cargo/git || true
