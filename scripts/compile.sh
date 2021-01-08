#!/bin/sh

set -e

npx @eth-optimism/solc --abi --bin -o $(pwd)/build $(pwd)/contracts/Bank.sol --base-path $(pwd)
