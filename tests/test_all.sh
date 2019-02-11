#!/usr/bin/env bash

echo 'AXCHANGE_BASE_URL="'$AXCHANGE_BASE_URL'"' >> "tests/spec1.yml"
echo 'axchange_token="'$axchange_token'"'       >> "tests/spec1.yml"

sudo ./bootstrap "tests/spec1.yml" -N 2>&1
sudo /opt/spec1_app/axc/enter tcpflow -h
sudo /opt/spec1_app/axc/enter hg -h
sudo /opt/spec1_app/axc/enter vim --version


