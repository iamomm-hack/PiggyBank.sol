// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract PiggyBank {
    address public owner;
    uint public unlockTime;

    constructor(uint _unlockTimeInSeconds) {
        owner = msg.sender;
        unlockTime = block.timestamp + _unlockTimeInSeconds;
    }

    // Deposit Ether into the contract
    receive() external payable {}

    // Get balance of Ether stored
    function getBalance() public view returns (uint) {
        return address(this).balance;
    }

    // Withdraw only after unlock time
    function withdraw() public {
        require(msg.sender == owner, "Only owner can withdraw");
        require(block.timestamp >= unlockTime, "Too early to withdraw");
        payable(owner).transfer(address(this).balance);
    }
}
