#!/bin/bash

for i in $(ls -d */ | cut -f1 -d'/'); do docker push ubuntu$i:base ghcr.io/mtharpe/ubuntu$i:base; done
