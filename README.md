# 🏦 EtherVault: A Time-Locked Piggy Bank Smart Contract

**EtherVault** is a beginner-friendly Ethereum smart contract that allows users to save their Ether securely and withdraw it **only after a specified lock period**. Built with Solidity, it's ideal for learning smart contract basics, time-based logic, and safe fund management.

---

## 🌟 Project Highlights

- 🔐 **Time-locked Savings** — Withdraw funds only after a fixed duration.
- 👤 **Owner-only Withdrawals** — Ensures only the contract owner can access the funds.
- 💰 **Ether Deposit & Balance Tracking** — Easily send and track stored Ether.
- ⚙️ **Beginner Friendly** — Great for students and devs new to Solidity and blockchain development.

---

## 📌 Why EtherVault?

Time-locked wallets are a fundamental concept in decentralized finance (DeFi) and blockchain security. This contract demonstrates:
- How smart contracts manage time using `block.timestamp`
- How to handle Ether deposits and secure withdrawals
- Access control via `msg.sender`
- Real-world use cases like crypto saving vaults, token vesting, and staking lock-ins

---

## 💡 Use Case Scenarios

- **Personal Crypto Saving Vaults**
- **Token Vesting Contracts** for team members or investors
- **Learning Solidity & Remix IDE**
- **Hackathon/Mini Project for Blockchain Enthusiasts**

---

## 🔧 Tech Stack

| Tech        | Description                |
|-------------|----------------------------|
| Solidity    | Smart contract programming |
| Ethereum    | Blockchain platform        |
| Remix IDE   | Online IDE for Solidity    |
| MetaMask    | Web3 wallet integration    |

---

## 🧩 Smart Contract Code

```solidity
// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract PiggyBank {
    address public owner;
    uint public unlockTime;

    constructor(uint _unlockTimeInSeconds) {
        owner = msg.sender;
        unlockTime = block.timestamp + _unlockTimeInSeconds;
    }

    receive() external payable {}

    function getBalance() public view returns (uint) {
        return address(this).balance;
    }

    function withdraw() public {
        require(msg.sender == owner, "Only owner can withdraw");
        require(block.timestamp >= unlockTime, "Too early to withdraw");
        payable(owner).transfer(address(this).balance);
    }
}
