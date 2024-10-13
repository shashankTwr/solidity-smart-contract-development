## Goals to accomplish

- [x] Establish a chainlink data feed to get price ETH/USD
  - [x] Usage of interface and compiling it
    - [x] statically
    - [x] dynamically
- [x] Create a conversion rate from wei to USD
- [x] Create a minimum amount of funding constraint
- [x] Keep track of lists of msg.sender to show funders
- [x] Library and utilizing it for solving solidity math
- [x] withdraw function
  - [x] withdraw function setup
  - [x] 3 different ways of sending money -> transfer/send/call
  - [x] only the owner can call the contract
- [x] Modifiers
- [x] immutables and constant
- [x] custom errors
- [x] fallback and recieve

## Transaction fields and changes

// Transaction fields
// Nonce tx count for the account
// gas price price per unit of gas(in wei)
// Gas limit max gas that this tx can use
// To address that the tx is send to
// Value amount of wei to send
// Data what to send to the To Address
// v,r,s components of tx signature

// Transaction fields -> value transfer
// Nonce tx count for the account
// gas price price per unit of gas(in wei)
// **Gas limit 21000(can be populated)**
// **To address that the tx is send to(can be populated)**
// Value amount of wei to send
// **Data empty(can be populated)**
// v,r,s components of tx signature(cryptographic magic)

// transactions **function call**
// Nonce tx count for the account
// gas price price per unit of gas(in wei)
// Gas limit 21000(can be populated)
// To **address that the tx is send to(can be populated)**
// Value amount of wei to send
// Data **_what to send_**
// v,r,s components of tx signature(cryptographic magic)

In order to get the network and Decentralized oracle and chainlink
Blockchains are deterministic are by design so all nodes can reach consensus
**Smart contract connectivity problem or Oracle**

1. to replace traditional issue
2. Blockchain oracle
   1. any device interacts with offchain world to provide external data
   2. if we use centralized oracle it can injects centralization in our decentralized network
3. Hybrid Smart-Contract
4. Chainlink is modular decentralized network
5. to reach consensus for that api call hence chainlink
6. Chainlink network can be completely customizable
7. there are out of the box
8. chainlink data feeds
   1. Blockchains are deterministic?
      1. how to get random use chainlink data feeds
   2. Chainlink keepers -> chainlink automation
   3. chainlink VRF
   4. End to End Reliability is the Promise of Smart Contracts
   5. Chainlink Functions???
   6. Chainlink data feeds

## safemath.sol and library

1. safemath got out of use after version 8 of solidity
2. max size of uint8 is 255
   1. what if we increment by 1
   2. bigNumber gets reset to 0
   3. concept of unchecked number and wrapping to zero
   4. safemath made sure wrapping didn't perform
3. overflow is checked in solidity
   1. unchecked(num = num+1)
   2. now checking and wrapping happens
4. why will we use unchecked in newer verison of solidity
   1. gas efficient

## Advanced solidity: Immutables and constants

1. Variables that only set once can be made more gas efficient
2. constant and immutables reduce gas cost
3. Gas optimizations work once you're really good
4. we can't change immutable and constant and contract won't compile

## Advanced solidity: Custom errors

1. custom errors
2. saves gas and we declare it outside contract
3. then we can use revert instead of require
