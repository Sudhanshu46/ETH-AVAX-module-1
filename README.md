# Bank Contract

This is a Solidity smart contract that demonstrates different error handling techniques using `assert`, `revert`, and `require` functions.

## License

This contract is using the MIT License.

## Prerequisites

- Solidity ^0.8.18

## Contract Details

The `bank` contract provides the following functions:

### `addBalance(uint a)`

- This function demonstrates the usage of the `require` function.
- It takes an `x` parameter and performs addition with a predefined constant `balance`.
- It first checks if `x` is greater than zero using the `require` statement.
- If the condition fails, it reverts the transaction with a custom error message stating need some balance.
- If the condition is met, it returns the result of the addition of the number from which we will get total balance.

### `withdraw(uint amount)`

- This function demonstrates the usage of the `assert` function.
- It takes a `amount` parameter and checks if it is not equal to zero using the `assert` statement.
- If the condition fails, it triggers an "Internal error" and aborts the execution.

### `withdrawable(uint amount)`

- This function demonstrates the usage of the `revert` function.
- It takes `balance` and `amount` parameters and performs division.
- If the `balance` is less than `amount`, it reverts the transaction with a custom error message stating "Requested amount can not be credited, request amount is greater than balance available".
- If the condition is met, it returns the result of the division.

## Usage

1. Make sure you have Solidity ^0.8.18 installed.
2. Compile and deploy the `bank` contract to a supported Ethereum network.
3. Interact with the deployed contract by calling the available functions and providing the required parameters.

## Video Walkthrough

https://www.loom.com/share/5f8d2a563aa340c5a4bc36119182a832

Feel free to explore and modify the contract according to your needs!
