#!/usr/bin/env bash

name="$(basename "$PWD")"
docker build --platform linux/amd64 -t "pforret/$name" . &&
docker push "pforret/$name" &&
setver auto
