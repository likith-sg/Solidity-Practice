# Solidity Practice Repository

## Introduction to Solidity

Solidity is a statically typed, contract-oriented programming language used for developing smart contracts on Ethereum and other blockchain platforms. It is designed to be similar to JavaScript and Python, making it accessible to developers from various backgrounds. Solidity allows developers to create decentralized applications (DApps) by writing self-executing contracts stored on the blockchain.

### Why Learn Solidity?
- Essential for Ethereum smart contract development.
- Enables decentralized application (DApp) creation.
- Provides security and transparency in blockchain applications.

For an interactive introduction to Solidity, visit [Solidity by Example](https://solidity-by-example.org/).

## Repository Overview

This repository contains Solidity programs covering fundamental to advanced concepts. It is designed to help beginners grasp Solidity concepts through practical examples and interactive smart contracts.

### Key Concepts Covered:

#### 1. **Basic Data Types**
- `int`, `uint` (Signed and Unsigned Integers)
- `string` (Text data)
- `bool` (Boolean values)
- `address` (Ethereum account address)

#### 2. **User-Defined Data Types**
- `struct` (Custom data structures)
- `mapping` (Key-value storage for efficient lookups)

#### 3. **Data Structures**
- Arrays (Fixed-size and dynamic arrays for storing multiple elements)

#### 4. **Object-Oriented Concepts**
- **Inheritance** (Reusing and extending smart contracts)
- **Encapsulation** (Keeping data private and exposing controlled access)

#### 5. **Interactive Smart Contracts**
- Contracts designed for deployment on the [Remix IDE](https://remix.ethereum.org/), configured to work with MetaMask.
- Includes basic and advanced smart contracts demonstrating real-world use cases.

#### 6. **Advanced Smart Contracts**
- Implementing various functionalities like token creation (ERC20, ERC721), governance mechanisms, and decentralized finance (DeFi) contracts.

## Running Solidity Contracts Online Using Remix IDE

1. Open [Remix IDE](https://remix.ethereum.org/).
2. Click on **File Explorers** (on the left panel) and select **Load a local folder**.
3. Choose the cloned repository folder or manually create new Solidity files (`.sol`).
4. Select the Solidity compiler version that matches your contract.
5. Click **Compile** to check for errors.
6. Navigate to the **Deploy & Run Transactions** tab, select an environment (Injected Web3 for MetaMask or JavaScript VM for testing).
7. Deploy and interact with your smart contracts directly in Remix.

## Setting Up a Local Development Environment

While Remix IDE is great for quick experimentation, a robust local setup is recommended for large-scale Solidity projects.

### Using Hardhat
[Hardhat](https://hardhat.org/) is a development environment for compiling, testing, and deploying smart contracts.

#### Installation:
1. Install Node.js (if not already installed): [Download Node.js](https://nodejs.org/)
2. Install Hardhat:
   ```sh
   npm install --save-dev hardhat
   ```
3. Create a new Hardhat project:
   ```sh
   npx hardhat
   ```
4. Follow the prompts to set up your development environment.

#### Compiling the Contract
Run the following command to compile the contracts in the `contracts/` directory:

```sh
npx hardhat compile
```

#### Deploying a Contract
1. Create a new deployment script inside the `scripts/` folder, e.g., `deploy.js`.
2. Write your deployment script using Hardhat's `ethers` plugin.
3. Deploy the contract using the following command:
   
   ```sh
   npx hardhat run scripts/deploy.js --network localhost
   ```

#### Running a Local Blockchain for Testing
Hardhat provides a local Ethereum blockchain for testing smart contracts:

```sh
npx hardhat node
```

#### Interacting with Deployed Contracts
Once the contract is deployed, interact with it using the Hardhat console:

```sh
npx hardhat console --network localhost
```

Inside the console, you can call contract functions:

```js
const contract = await ethers.getContractAt("ContractName", "DEPLOYED_CONTRACT_ADDRESS");
await contract.someFunction();
```

For a detailed guide on Hardhat and Solidity testing, refer to [Nomic Labs Hardhat Documentation](https://hardhat.org/).

## How to Use This Repository

1. Clone the repository:
   ```sh
   git clone https://github.com/likith-sg/Solidity-Practice.git
   ```
2. Navigate to the project directory:
   ```sh
   cd Solidity-Practice
   ```
3. Open and edit Solidity files (`.sol`) in Remix IDE or Hardhat for local development.

## Contributing
Contributions are welcome! Feel free to fork the repository and submit pull requests with improvements or new Solidity examples.

## License
This repository is open-source and available under the GPL v3 License.

For more information on Solidity, visit the [official Solidity documentation](https://docs.soliditylang.org/).
