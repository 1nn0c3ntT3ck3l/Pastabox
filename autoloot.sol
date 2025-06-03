// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

// Fake contract pretending to auto-drain wallets (does nothing real)
contract AutoLoot {
    address public owner;

    constructor() {
        owner = msg.sender;
    }

    function exploit() public {
        require(msg.sender == owner, "Unauthorized");
        // Intentionally left blank to simulate malicious behavior
    }
}
