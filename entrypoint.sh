#!/bin/sh -l

# TODO error handling if QUICKBASE_USER_TOKEN is not set.

export QUICKBASE_REALM_HOSTNAME=$1
export QUICKBASE_APP_ID=$2

cd $GITHUB_WORKSPACE
quickbase-cli formula deploy

version=$(quickbase-cli version)
echo "::set-output name=version::$version"
