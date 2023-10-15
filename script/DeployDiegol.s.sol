//SPDX-License-Identifier: MIT

pragma solidity ^0.8.20;

import {Script} from "lib/forge-std/src/Script.sol";
import {Diegol} from "src/Diegol.sol";

contract DeployDiegol is Script {
    // address initialOwner = $INITIAL_ANVIL;


    function run() external {
        vm.startBroadcast();
        new Diegol(0xf39Fd6e51aad88F6F4ce6aB8827279cffFb92266);
        vm.stopBroadcast();
    }
}
