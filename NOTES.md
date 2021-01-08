## Optimism Rollup

Major differences from L1:
- Contracts are compiled with a forked version of solidity.
- Ether exists as an ERC20 token only on L2

Optimism seems to have gone through a major restructure recently. Most of their documentation says to use the optimism-monorepo to run the [@eth-optimism/rollup-full-node](https://github.com/ethereum-optimism/optimism-monorepo#readme). This package no longer exists in the monorepo, instead a forked version of the Ethereum go client (geth) is being used with some hardcoded values. In order to support the Görli chain and a custom deployment this repo was forked again to the image [here](https://hub.docker.com/r/jchancehud/optimism-client-go).

This repo contains a Solidity contract that is deployed to the Optimism rollup. This contract compiles but deployment never returns. This seems to be a result of no blocks being produced. Despite this the L1 Canonical Transaction Chain [shows transactions](https://goerli.etherscan.io/address/0xD85Cf16A715f52fF6dFaEC03bD6110143927Da9b) when attempting to deploy contracts. The lack of transaction receipt may be a bug or misconfiguration in the forked version of ethereum-go.

Ultimately this seems to be a transitional time for the Optimism codebase. Documentation needs to be rewritten/updated to clarify what codebase functions as the block producer/full node/etc.
