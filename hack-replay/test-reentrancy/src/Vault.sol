// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.30;

contract Vault {
    mapping(address => uint256) public balances;

    function deposit() public payable {
        balances[msg.sender] += msg.value;
    }
    function withdraw(uint256 amount) public {
        require(balances[msg.sender] >= amount, "Not enough balance");
        (bool success, ) = msg.sender.call{value: amount}("");
        require(success, "Transfer failed");
        // update balance in assembly — same reentrancy bug, harder to spot
        assembly {
            mstore(0x00, caller())
            mstore(0x20, balances.slot)
            let slot := keccak256(0x00, 0x40)
            let current := sload(slot)
            sstore(slot, sub(current, amount))
        }
    }
}
