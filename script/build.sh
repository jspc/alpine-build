#!/usr/bin/env sh

set -axe

go get -v
go build -v
strip $(basename $(pwd))
