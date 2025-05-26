# 🏦 EtherVault: A Time-Locked Piggy Bank Smart Contract

**EtherVault** is a beginner-friendly decentralized application (dApp) that acts like a time-locked piggy bank for storing ETH or testnet tokens. This project is perfect for learning how Ethereum smart contracts work, especially how they can control the flow of funds based on time-based conditions.

---

## 🌟 Features

- 🔐 **Time-Locked Withdrawals**  
  Users can deposit ETH and only withdraw it after a specific time.

- 👤 **Owner-Restricted Access**  
  Only the person who deployed the contract can withdraw the funds.

- 📈 **Live ETH Balance Viewer**  
  You can check how much ETH is stored in your piggy bank at any time.

- 🛠️ **Beginner-Friendly Setup**  
  Great for students and devs starting out with Solidity and Remix IDE.

---

## 📌 Importance of the Project

Time-locked contracts form the basis of many real-world blockchain applications:

- Vesting schedules for teams/investors
- Crypto savings tools
- Token release automation
- Delay-based rewards or staking models

This piggy bank serves as a foundational project to help understand these concepts in a simple, hands-on way.

---

## 🚀 Getting Started

### ✅ Prerequisites
- Basic understanding of Ethereum and smart contracts
- MetaMask wallet (installed in browser)
- Access to [Remix IDE](https://remix.ethereum.org)

---

### 🧪 How to Test It on Remix

1. **Open Remix** and paste the smart contract code.
2. Compile with the Solidity version `^0.8.0`.
3. In the "Deploy & Run Transactions" tab:
   - Set "Environment" to "Injected Web3" (connects MetaMask).
   - Input a lock time in seconds (e.g., `60` for 1 min).
   - Deploy the contract.
4. Deposit ETH using the value input and fallback function.
5. After the set time, click `withdraw()` to retrieve your ETH.

---

## 📸 Deployment Proof

Here’s a screenshot of a successful contract deployment on the **CORE Testnet**:

![Deployment on CORE Testnet](images/deployment-screenshot.png)

> 📝 *Replace `imag![image](https://github.com/user-attachments/assets/806e1493-1e20-4ecd-948a-5e3090c360e4)
es/deployment-screenshot.png` with the correct path if you rename or move the image in your repo.*

---

## 🧠 Learning Outcomes

By building this project, you’ll understand:

- How Ethereum smart contracts manage time (`block.timestamp`)
- Safe Ether transfers using Solidity
- How to use Remix IDE and MetaMask with testnets
- The basics of secure contract design

---

## ⚠️ Disclaimer

This project is intended for **learning purposes only**. It is **not audited** and **should not be used on the mainnet** to store real ETH or assets. Always consult best practices and security audits before deploying smart contracts in production.

---

## 🧰 Tools Used

| Tool        | Purpose                          |
|-------------|----------------------------------|
| Remix IDE   | Writing and deploying the contract |
| MetaMask    | Wallet for deploying/interacting  |
| CORE Testnet | Testing the smart contract       |

---

## 📚 Helpful Resources

- [Solidity Docs](https://docs.soliditylang.org/)
- [Remix IDE Guide](https://remix-ide.readthedocs.io/)
- [CryptoZombies](https://cryptozombies.io/) – Interactive Solidity Tutorial
- [Ethereum Smart Contract Best Practices](https://consensys.github.io/smart-contract-best-practices/)

---

## 📄 License

This project is open-source and available under the [MIT License](LICENSE).

---

## ✨ Author

Created by **Om Kumar**  
A passionate beginner in the world of Web3 and Solidity development.

If you liked this project, please ⭐ the repo!
