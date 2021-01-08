## Optimism Rollup

Major differences from L1:
- Contracts are compiled with a forked version of solidity.
- Ether exists as an ERC20 token only on L2

Optimism seems to have gone through a major restructure recently. Most of their documentation says to use the optimism-monorepo to run the [@eth-optimism/rollup-full-node](https://github.com/ethereum-optimism/optimism-monorepo#readme). This package no longer exists in the monorepo, instead a forked version of the Ethereum go client (geth) is being used with some hardcoded values. In order to support the Görli chain and a custom deployment this repo was forked again to the image [here](https://hub.docker.com/r/jchancehud/optimism-client-go).

This repo contains a Solidity contract that is deployed to the Optimism rollup. This contract compiles but deployment never returns. This seems to be a result of no blocks being produced.
