#!/bin/sh -l

if [ -z "$QUICKBASE_USER_TOKEN" ]; then
  echo "QUICKBASE_USER_TOKEN environment variable required" >&2
  exit 1
fi

export QUICKBASE_REALM_HOSTNAME=$1
export QUICKBASE_APP_ID=$2
quickbase-cli formula deploy
