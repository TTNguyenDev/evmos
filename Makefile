dependences:
	forge install openzeppelin/openzeppelin-contracts
tokenDeploy:
	forge script script/TokenSell.s.sol --rpc-url https://t-evmos-jsonrpc.kalia.network --verify --broadcast -vvvv
buy:
	forge ......
getRate:
	forge ...
setRate: 
	forge ...

