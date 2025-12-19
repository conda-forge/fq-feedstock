#!/usr/bin/env bash

set -o xtrace -o nounset -o pipefail -o errexit

go build -o=${PREFIX}/bin/fq -ldflags="-s -w"
go-licenses save . --save_path=license-files
