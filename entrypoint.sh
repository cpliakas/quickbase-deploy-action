#!/bin/sh -l

echo "App ID: $1"
version=$(quickbase-cli version)
echo "::set-output name=version::$version"