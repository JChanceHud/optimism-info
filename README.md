# optimism-info

Research repo for the Optimism rollup.

## Contract addresses

L1 contract addresses on the Görli network.

`CHAIN_ID=9000`

```
{
  "AddressManager": "0xbB8169C389B30D683D9D271Ab0101315fad6598B",
  "OVM_Sequencer": "0xD1b9519fcA1c3b06CDDCa007A2dBeE8C21175Cc4",
  "Deployer": "0x854643aE893857C1bd32c5AF7B4404FE15f3641f",
  "OVM_L2CrossDomainMessenger": "0x29d1b09892CfF1F714EB87F33d4dD42B293852a7",
  "OVM_L1CrossDomainMessenger": "0x8d04533830076F422655fB86953d3E996C62852c",
  "Proxy__OVM_L1CrossDomainMessenger": "0x529b3a0493aeAEA01BFCC47040BE54e784Eee534",
  "OVM_CanonicalTransactionChain": "0xD85Cf16A715f52fF6dFaEC03bD6110143927Da9b",
  "OVM_StateCommitmentChain": "0xFd95caEBC170e873B9705c0a1Fe9f2e596becdDF",
  "OVM_DeployerWhitelist": "0xa3C8f4E4ff4460FA734Dec46123b8A80AAA4f245",
  "OVM_L1MessageSender": "0x9dc847b6e9f652e8AB812b8B39a8Df8011A3F4C1",
  "OVM_L2ToL1MessagePasser": "0xF520398B372C9102Ac1d9c9FeeBDcB5B12fA9D6d",
  "OVM_SafetyChecker": "0x42B6F84eE26d9308Ee9d5e06d97fd7654eE3BDa3",
  "OVM_ExecutionManager": "0x0584a16732E161C93d88EFDA39Fa2eE727cA1963",
  "OVM_StateManager": "0xd513441cA2780966Fc65F7E30D35fCB853241F97",
  "OVM_StateManagerFactory": "0x90391bf0582B61692DA2c449C5C7F8dE7b60a751",
  "OVM_FraudVerifier": "0x0A95B27551C54e4722e36acB2fb836533b4CE2f4",
  "OVM_StateTransitionerFactory": "0xA3beE6D3b41B00dF8b2e2a4Bb1185147167dFe1d",
  "OVM_ECDSAContractAccount": "0xfcE4Fcc6Bb69E8B64005143f7fC6d3f8515f36F6",
  "OVM_SequencerEntrypoint": "0x0e35e4d301938F05eFde307D68399073Bf625b9b",
  "OVM_ProxySequencerEntrypoint": "0x99838f1F86e04c32cCa285FeA7421b2E4450f7a0",
  "mockOVM_ECDSAContractAccount": "0xF9DeDC73a8BB423c543a6fFF07111605dc0627C1",
  "OVM_BondManager": "0xb7DeA0eBBa2867D204157CE57a5620ea4EF1c4EC",
  "OVM_ETH": "0xbAB726190777d4dB63c0Caa0866496C6A934A022",
  "OVM_ChainStorageContainer:CTC:batches": "0x8359eE2b6D0204BEed37edDda4bD6d04b12eA38c",
  "OVM_ChainStorageContainer:CTC:queue": "0x458c2A1c36F5BCC6C18D57a35f0662aF8Ade4b6D",
  "OVM_ChainStorageContainer:SCC:batches": "0xE49fDa6F87fAaB01845e264cfBB69De86d878099"
}
```

## Run a Verifier

Use [this repo](https://github.com/jchancehud/verifier) to run a verifier. The docker-compose file is pre-configured to run a verifier, fraud-prover, and batch-submitter.

```sh
git clone https://github.com/jchancehud/verifier.git
cd verifier
docker-compose up
```

## Deployment

Use `npm run deploy:rollup` to deploy the Optimism L1 contracts. A preset deployment can be accessed at the above addresses. The `.env` file should be used to control options for the deployed contracts (sequencer, deployer, etc). A full list of options can be found [here](https://github.com/JChanceHud/contracts-v2/blob/master/bin/deploy.js#L8).

## Contract Deployment in Rollup

Use `npm run deploy:contract` to compile and deploy a contract to the Optimism rollup.
