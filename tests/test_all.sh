#!/usr/bin/env bash
set -eu

run_test () {
    local spec="tests/$1"
    echo 'AXCHANGE_BASE_URL="'$AXCHANGE_BASE_URL'"' >> "$spec"
    echo 'axchange_token="'$axchange_token'"'       >> "$spec"
    sudo ./bootstrap "$spec" -N
    echo "base tools working:"
    sudo /opt/spec1_app/axc/enter tcpflow -h || exit 1
    sudo /opt/spec1_app/axc/enter hg -h      || exit 1
    sudo /opt/spec1_app/axc/enter vim --version | grep '+python3' || exit 1
    sudo /opt/spec1_app/axc/enter curl -q https://github.com  || exit 1
}


run_test spec1
echo "Git repo checked out via hggit:"
test -e "/opt/spec1_app/repos/ubc__master/.hg/hgrc" || exit 1

