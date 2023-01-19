// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.13;

import "forge-std/Script.sol";
import "../src/ERC721BatchSend.sol";

contract ERC721BatchSendDeployScript is Script {
    function setUp() public {}

    function run() external {
        uint256 deployerPrivateKey = vm.envUint("PRIVATE_KEY");
        vm.startBroadcast(deployerPrivateKey);
        ERC721BatchSend batchSend = new ERC721BatchSend();
        vm.stopBroadcast();
    }
}
