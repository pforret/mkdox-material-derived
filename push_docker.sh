#!/usr/bin/env bash

name="$(basename "$PWD")"
docker build -t "pforret/$name" . &&
docker push "pforret/$name" &&
setver auto
