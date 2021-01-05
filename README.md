# optimism-info

Research repo for the Optimism rollup.

## Contract addresses

L1 contract addresses on the Görli network.

`CHAIN_ID=9000`

```
{
  "AddressManager": "0xf8288f17B625041b8ada6A2434ece72328225dcc",
  "OVM_Sequencer": "0xD1b9519fcA1c3b06CDDCa007A2dBeE8C21175Cc4",
  "Deployer": "0x854643aE893857C1bd32c5AF7B4404FE15f3641f",
  "OVM_L2CrossDomainMessenger": "0x52f49f1EF43e8de570042ceD4417fB33Cfb796A7",
  "OVM_L1CrossDomainMessenger": "0xD9d884Ea6C3048d9FA6DE0A0Ca4664b298Bd7C61",
  "Proxy__OVM_L1CrossDomainMessenger": "0x9c4D992cAEC010F1018EbF5C2f10277f44F80b53",
  "OVM_CanonicalTransactionChain": "0xa0a821EddDFE228DCD33Dc807198468c05f13c1b",
  "OVM_StateCommitmentChain": "0x6b7362b0b25D418bCF77aF3bEd053De5EfB8AA0c",
  "OVM_DeployerWhitelist": "0xBE2924Fe63c48755c02b987DD7BB97c7247Aa86b",
  "OVM_L1MessageSender": "0xe54cD5F31Fb7E26DF5BA73f23cc0A14dfc4e4224",
  "OVM_L2ToL1MessagePasser": "0x17310f7fEc56551FD0Ccc99b91EF50FBbBf2f5A9",
  "OVM_SafetyChecker": "0xA11940deC53ca27c980589d0314d8022912F71c4",
  "OVM_ExecutionManager": "0xc567Dbb20946C7a7412cC2e5629557da083d0a3F",
  "OVM_StateManager": "0xD67A5e1c3E528987349E2Cc52A0f77e546E8377D",
  "OVM_StateManagerFactory": "0x5D7f6CABe404Ed43B6EAa116f47A17acBA854657",
  "OVM_FraudVerifier": "0x7d8cA226FE1dAc77E58F7D6e774A5908184061F6",
  "OVM_StateTransitionerFactory": "0xCA70706F3de8682ab92F1AD6ee2Ce559C7268093",
  "OVM_ECDSAContractAccount": "0xc5847E0fB94a6dB45De0DC9B4E901fCA065ff956",
  "OVM_SequencerEntrypoint": "0x54cF5f999a94ED933305ba805d3fF6B9385D6fcB",
  "OVM_ProxySequencerEntrypoint": "0xA0Bf6584fFe7d7a1DbeB0dCd989955BdB68f7a17",
  "mockOVM_ECDSAContractAccount": "0x0663A71Dba12ff19Af7774EBb70c1B94528242DB",
  "OVM_BondManager": "0x53093b3c58Df7da09BF2F6A883786e0979716CB6",
  "OVM_ETH": "0xF9dc27e33fC55F7a3713162A8a221C68bfF17639",
  "OVM_ChainStorageContainer:CTC:batches": "0x315F4b699E088aE08A2532e31C9C7CC3b577D4B1",
  "OVM_ChainStorageContainer:CTC:queue": "0xE5AA620ef4034F7A12cfC5813fB65C8A919DeBb4",
  "OVM_ChainStorageContainer:SCC:batches": "0xaE34e44Fc4811674E4838F537173F1Fb9f3D7D24"
}
```

## Deployment

Use `npm run deploy` to deploy the Optimism L1 contracts. A preset deployment can be accessed at the above addresses.
