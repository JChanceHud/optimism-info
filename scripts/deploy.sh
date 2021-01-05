#!/bin/sh

set -e

touch .env
ORIG_DIR=$(pwd)

WORK_DIR=$(mktemp -d)
cd $WORK_DIR

git clone --depth 1 https://github.com/jchancehud/contracts-v2.git
cd contracts-v2
which yarn
yarn
yarn build

env $(cat $ORIG_DIR/.env | xargs) node $WORK_DIR/contracts-v2/bin/deploy

cp $WORK_DIR/contracts-v2/build/dumps/state-dump.latest.json $ORIG_DIR
