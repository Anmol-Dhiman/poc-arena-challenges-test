// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.13;

import "./Vault.t.sol";

contract ValidationTestHack is VaultHackReplay {
    function testValidation() public {
        testExploit();
        assertEq(vault.number(), 43, "Validation failed: number should be 43");
    }
}
