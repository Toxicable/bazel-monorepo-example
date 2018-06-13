#!/usr/bin/env bash

set -u -e -o pipefail

if [ -z $1 ]
  then
    echo "You must supply the label of the target to debug"
    exit 1
fi

CMD="./node_modules/.bin/ibazel run $1 -- --node_options=--inspect-brk"
echo $CMD
$($CMD)