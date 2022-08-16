#!/bin/bash

for i in $(ls -d */ | cut -f1 -d'/'); do docker push alpine$i:base ghcr.io/mtharpe/alpine$i:base; done
