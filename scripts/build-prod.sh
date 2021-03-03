#!/usr/bin/env bash

set -e
set -o nounset

SCRIPT_DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" >/dev/null 2>&1 && pwd )"
REPO="hellobaton/autoupdate-action"

pushd "${SCRIPT_DIR}/.." > /dev/null

set -x

docker build -t "${REPO}:v1" .
docker push "${REPO}:v1"

set +x

popd > /dev/null
