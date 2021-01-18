#!/usr/bin/env bash

set -e
set -o pipefail
set -v

echo "stackbit-build.sh: start build"

# build site
npm run build

./inject-stackbit-widget.js public https://localhost:8092/init.js 6005f31defb3fe4f6271e8b5

echo "stackbit-build.sh: finished build"
