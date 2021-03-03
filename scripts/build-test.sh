#!/usr/bin/env bash

set -e
set -o nounset

SCRIPT_DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" >/dev/null 2>&1 && pwd )"
REPO="hellobaton/autoupdate-action-unstable"

pushd "${SCRIPT_DIR}/.." > /dev/null

set -x

docker build -t "${REPO}:test" .
docker push "${REPO}:test"

set +x

popd > /dev/null
