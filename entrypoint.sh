#!/bin/sh -l

export QUICKBASE_REALM_HOSTNAME=$1
export QUICKBASE_APP_ID=$2

quickbase-cli app get

version=$(quickbase-cli version)
echo "::set-output name=version::$version"
