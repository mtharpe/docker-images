#!/bin/bash

for i in $(ls -d */ | cut -f1 -d'/'); do docker push fedora$i:base ghcr.io/mtharpe/fedora$i:base; done
