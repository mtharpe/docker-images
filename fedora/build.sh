#!/bin/bash

for i in $(ls -d */ | cut -f1 -d'/'); do docker build -t fedora$i:base $i/ ;done
