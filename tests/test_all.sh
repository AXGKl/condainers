#!/usr/bin/env bash
sudo ./bootstrap "tests/spec1.yml" -N 2>&1
sudo /opt/spec1_app/axc/enter tcpflow -h
sudo /opt/spec1_app/axc/enter hg -h
sudo /opt/spec1_app/axc/enter vim --version


