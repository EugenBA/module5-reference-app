#!/usr/bin/env bash
set -euo pipefail

cargo build --release
perf record -g --max-size=50M ./target/release/demo || true
perf report
