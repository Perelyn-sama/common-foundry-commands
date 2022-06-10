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
