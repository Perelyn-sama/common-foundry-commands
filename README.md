# The gist

When working with Foundry I usually work with makefiles, so everything I start a new project, I go back to my old projects to copy the makefile commands to my current project.

This repo was created to be my go to place to copy Foundry commands cause yeah, I'm a lazy bum. In the future the contents of this Repo could be on the Foundry book, if I can find enough useful commands to put in here that'll be useful not just to me but every Foundry user.

This was inspired by Patrick's https://github.com/PatrickAlphaC/foundry-play/blob/main/Makefile

If you have any command that you'd want in this repo, just open a pr.

```bash
# include .env file and export its env vars
# (-include to ignore error if it does not exist)
-include .env

# Install the Modules
install:
	forge install Rari-Capital/solmate
	forge install OpenZeppelin/openzeppelin-contracts

# To Check gas report
gas:
    forge test --gas-report

anvil-fork:
    anvil -f ${RPC_URL} -m ${MNEMONIC}

script:
    forge script scripts/MyToken.s.sol --rpc-url ${LOCAL_RPC_URL} --broadcast --private-key ${LOCAL_PRIVATE_KEY}  -vvvv

script-mainnet:
    forge script scripts/MyToken.s.sol --rpc-url ${RPC_URL}  --private-key ${PRIVATE_KEY} --broadcast --verify --etherscan-api-key ${ETHERSCAN_KEY} -vvvv

abi:
    cast abi-encode "constructor(uint64)" 2274

```
