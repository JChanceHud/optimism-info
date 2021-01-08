const path = require('path')
const readline = require('readline')
const fs = require('fs')
const Web3 = require('web3')
// require('dotenv/config')

const contracts = [
  '_contracts_Bank_sol_Bank',
]

;(async () => {
  let nodeUrl = `http://localhost:8045`
  nodeUrl = (await getInput(`Enter an Optimism node url (${nodeUrl}): `)) || nodeUrl

  const web3 = new Web3(nodeUrl)
  // It doesn't cost money to deploy on an Optimism chain so any private key works
  const account = web3.eth.accounts.create()
  web3.eth.accounts.wallet.add(account.privateKey)

  for (const contract of contracts) {
    const contractPath = path.join(__dirname, '../build/', `${contract}.bin`)
    const ABI = JSON.parse(fs.readFileSync(path.join(__dirname, '../build', `${contract}.abi`)))
    const contractBin = fs.readFileSync(contractPath, 'ascii').toString('hex')
    const _contract = new web3.eth.Contract(ABI, {
      data: `0x${contractBin}`,
      from: account.address,
    })
    console.log('Deploying...')
    const res = await _contract.deploy()
      .send({
        from: account.address,
        gas: 2000000,
        gasPrice: 0,
      })
      .on('confirmation', console.log)
    console.log(`Deployed at address ${res._address}`)
  }
})()

async function getInput(prompt) {
  const rl = readline.createInterface({
    input: process.stdin,
    output: process.stdout,
    terminal: true,
  })
  const answer = await new Promise(rs => rl.question(prompt, rs))
  rl.close()
  return answer
}
