// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.30;

import {Test} from "forge-std/Test.sol";
import {Vault} from "../src/Vault.sol";

contract ReentrancyTest is Test {
    Vault public vault;

    function setUp() public {
        vault = new Vault();
        vm.deal(address(vault), 10 ether);
    }

    function testExploit() public {
        // Your code here
    }
}
