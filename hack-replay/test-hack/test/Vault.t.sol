// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.13;

import {Test} from "forge-std/Test.sol";
import {Vault} from "../src/Vault.sol";

contract VaultHackReplay is Test {
    Vault vault;

    function setUp() public {
        vault = new Vault();
    }

    function testExploit() public {
        // Your code here
    
    }
}
