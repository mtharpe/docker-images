#!/bin/bash

for i in $(ls -d */ | cut -f1 -d'/'); do docker build -t ubuntu$i:base $i/ ;done
