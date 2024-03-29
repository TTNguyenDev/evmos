
// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.13;

import {Script, console} from "forge-std/Script.sol";
import "../src/TokenSell.sol";

contract CounterScript is Script {
    function setUp() public {}

    function run() public {
      uint256 deployerPrivateKey = vm.envUint("PRIVATE_KEY");
      vm.startBroadcast(deployerPrivateKey);
      TokenSell tokenSell = new TokenSell("Dora", "DOR");
      vm.stopBroadcast();
    }
}
