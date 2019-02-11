#!/usr/bin/env bash
./bootstrap "tests/spec1.yml" -N 2>&1
/opt/spec1_app/axc/enter tcpflow -h
/opt/spec1_app/axc/enter hg -h
/opt/spec1_app/axc/enter vim --version


