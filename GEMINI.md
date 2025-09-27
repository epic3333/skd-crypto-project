# GEMINI.md

## Project Overview

This appears to be a new Hardhat project for Ethereum smart contract development. Hardhat is a development environment to compile, deploy, test, and debug your Ethereum software.

**Main Technologies:**
*   Node.js
*   Hardhat

## Building and Running

This project is not yet fully configured. Here are the steps to get started:

### 1. Initialize a Sample Project

To create a sample Hardhat project, run the following command and follow the prompts:

```bash
npx hardhat
```

This will create a `hardhat.config.js` file, and `contracts`, `scripts`, and `test` directories.

### 2. Compile Contracts

Once you have your smart contracts in the `contracts` directory, you can compile them with:

```bash
npx hardhat compile
```

### 3. Run Tests

To run the tests in the `test` directory, use:

```bash
npx hardhat test
```

### 4. Deploy Contracts

To deploy your contracts to a network, you will need to create a deployment script in the `scripts` directory. Then, you can run it with:

```bash
npx hardhat run scripts/deploy.js --network <network-name>
```

## Development Conventions

*   **Smart Contracts:** Solidity smart contracts should be placed in the `contracts` directory.
*   **Deployment Scripts:** Deployment scripts should be placed in the `scripts` directory.
*   **Tests:** Tests should be placed in the `test` directory.
*   **Configuration:** The project can be configured in the `hardhat.config.js` file.
