#!/bin/sh -l

echo "Realm Hostname: $1"
echo "App ID: $2"
version=$(quickbase-cli version)
echo "::set-output name=version::$version"