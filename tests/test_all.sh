#!/usr/bin/env bash
set -eu

run_test () {
    local spec="tests/$1"
    echo 'AXCHANGE_BASE_URL="'$AXCHANGE_BASE_URL'"' >> "$spec"
    echo 'axchange_token="'$axchange_token'"'       >> "$spec"
    sudo ./bootstrap "$spec" -N
    sudo /opt/spec1_app/axc/enter tcpflow -h
    sudo /opt/spec1_app/axc/enter hg -h
    sudo /opt/spec1_app/axc/enter vim --version
}


run_test spec1


