# lesson 1

## beginner basics and definitions

1. What is blockchain?
2. Ethereum?
3. Decentralized Agreements or Smart contracts?
   1. Smart contracts are a set of instructions executed in a decentralized way without the need for a centralized or a 3rd party intermediary
   2. Traditional agreements but written in code
   3. Removes centralized forces and counter-party risk
4. Bitcoin is intentionally "turing incomplete"
   1. What is turing incomplete?
   2. Store of Value and a utility for decentralized agreements for Ethereum
5. Blockchains are intentionally walled off
   1. Blockchains are deterministic systems
   2. Blockchains need external data
   3. What is an oracle??
   4. Hence decentralized oracle network??
   5. Leads to hybrid Smart contracts?
      1. on chain + off chain decentralized logic
      2. majority are hybrid smart contracts
6. What is chainlink??
   1. Modular decentralized oracle network
   2. brings both external and internal decentralized agreement
7. Smart contract and hybrid smart contract are used interchangeably
8. Most blockchains are compatible with Ethereum type smart contracts
9. Smart contract platform and blockchain used interchangeably
   1. blockchain haas both.
10. Chain-link is blockchain agnostic.
11. What is Dapp?
    1. Dapp is combination of many smart contracts.
    2. Web3 permission-less web with dynamic content.
12. Ownership Economy??
13. Trust minimized Agreement or Unbreakable promises
    1. Unbreakable agreement and promises
    2. Smart contract
       1. immutable
       2. decentralized
       3. transparent
    3. McDonald's lottery issue
    4. Decentralized Exchanges v/s Centralized Exchanges
       1. centralized body cannot flip aa switch and ruin a switch
    5. Transparency and insolvency checks built in
14. What about FTX and Scams??
    1. It was a centralized web2
15. Blockchain benefits
    1. Decentralized
    2. Security and immutability
    3. Quicker transaction and world
    4. hack take over half nodes ie data is not gone.
    5. Counter party risk removal
    6. Trust Minimized Agreements// Smart Contracts
    7. Brand based agreement to the Math based agreements.
    8. Transparency and engagement with protocols
16. What have Smart Contracts done ??
    1. DeFi = Decentralized Finance
       1. No longer can be locked out of markets
       2. 2007 issues??
       3. Money markets engagement can be easy
    2. DAOs
       1. Governed by sets of instructions
       2. Evolve fair and governance
    3. NFTs
       1. Digital or Unique Assets
17. First transaction

## Transaction

1. What is transaction fees?
   1. GAS price \* Gas used
2. What is Gas?
   1. Unit of Computational measurement
   2. Gas Limit and Usage by txn
      1. max -> Use
3. [https://andersbrownworth.com/blockchain/block](#Blockchain demo)
4. Hash Algorithm
5. Mining
   1. finding solution to blockchain problem
6. Block
7. Nonce
   1. number of transaction of a given address
8. Signing transaction?
   1. Private key -> known only to keyholder
   2. Elliptic Curve digital signature Algorithm(ECDSA)
   3. public key is created.
      1. everyone should have access to.
      2. public key is used for verification
   4. private key is used to sign the data and
   5. Message signature is created
   6. public key is used to verify the message signature
   7. mnemonic phrase combined with account number we can get private key
9. Private Key ||| > private key > address
10. Signing the transaction v/s sending is different
11. How are multiple accounts created
    1. metamask is essentially taking secret phrase + number
    2. new account and number changes thus new account is created
12. importance
    1. Secret Phrase >> private key ||| public address
    2. secret phrase results in more private key
13. Transaction fees
    1. Gas fees limit can be set
    2. Priority fees
       1. max fees are willing to pee
    3. Base fees
       1. min gas price to send your transaction
       2. priced in gwei
       3. 10^9 gwei is 1 ETH
       4. 10^9 wei is gwei
    4. Gas fees being burnt and ether is removed and other part goes to miner
14. EIP 1559
    1. every blockchain has different fee burning process
15. Block Number and Block confirmations
    1. how many blocks have been mined
16. Input data and transaction
17. State tab

## How it works in actuality

1. node
   1. A single instance in a decentralized network
   2. 1 server running blockchain technology
   3. Anyone can join the network and become node
   4. resilient to Node being malicious due to decentralized nature
2. Consensus, Proof of work and proof of stake
   1. consensus is the mechanism used to agree on the blockchain State
   2. consensus protocol is in 2 parts: Chain selection and sybil resistance
      1. proof of work and mining is sybil resistance
         1. which node is author and others verify it
         2. resist against fake nodes
         3. verifyable way to who proof author is
      2. Chain selection role
         1. how do we know which blockchain is true
         2. bitcoin uses nakomoto consensus
            1. pow, sybil resistance and longest chain
3. block confirmations
   1. number of additional blocks were added
   2. meaning x blocks are ahead of block
4. Proof of work
   1. decides who gets the transaction fees
   2. proof of stakes -> validators pow->miners
5. node gets paid
   1. transaction fees
      1. gas fees
      2. whoever makes the transaction -> pow
   2. block reward
      1. from the protocol and blockchain
      2. bitcoin halving cuts block reward half
   3. nodes -> competing to get the transaction to get both
6. Sybil Attack
   1. pseudo anon node to create
   2. single entity pretends to be multiple
7. 51% Attack
   1. longest chain and more than 51%
   2. fork and bring it along on your chain
   3. ETH classic suffered such
   4. hard when size is bigger
8. Drawbacks of POW
   1. lots of energy consumption
   2. environmental impact
9. Proof of stake
   1. Different sybil resistance
   2. put up a collateral as a sybil resistance mechanism -> stake
   3. Miners are actually called validators
   4. nodes are pseudo-randomly chosen
   5. competitiveness to mine is removed
10. Pros of POs
    1. uses much less energy
    2. less competitive
11. cons
    1. less de centralized
    2. how decenetralized is decentralized enough?
12. l1 -> base layer
13. l2 -> application on top of layer 1
14. Roll-ups
    1. rollup transaction into L1
    2. solves scalability issue
15. Side chain v/s Roll-ups
    1. side chain derive security from own protocol
16. Scalability problem and high gas prices -> Scalability problem

## L1, l2, rollups

1. What is a layer 1?
   1. Blockchain in purest form and node contribute to sybil resistance
   2. base layer of the blockchain ecosystem without additional plugins
   3. settlement layer
   4. BTC, ETH, BNB, Solana
2. What is a layer 2?
   1. built on top of layer 1
   2. apps deployed on layer 1 are not L2
   3. l2 -> secondary framework are built outside and hooks back in L1
   4. ChainLink
   5. Indexing networks like Graph
   6. Most popular is L2-chain such as rollups
3. what is a roll-ups?
   1. Scaling solution that increases the number of transaction on L1 chain
   2. rolling multi transaction into 1
   3. Why we need L2-chain and roll-ups
      1. blockchain essential 3 properties(trilemma only 2/3)
         1. decent
         2. secure against 51% and sybil and replay attacks
         3. scalable without speed and system
   4. rollups aim to solve scalability of Ethereum
      1. processing transaction off blockchain
      2. operator picks transaction and order them with other
      3. bundle together and send them to L1
         1. handle transaction efficiently
         2. gas price is split
         3. validity is checked in L1
   5. types of roll-Ups?
      1. optimistic v/s Z-K rollups(zero knowledge)
         1. optimistic -> assume transactions are legitimate
            1. time period is challenge period
            2. operators can challenge transaction and send fraud proof
               1. call and response with other operator untill 1 step
            3. if proof succeeds rollup will rollup and operator is penalized
            4. tokens are penalized and is called slashing
            5. if transaction are not invalidated proposal are correct
         2. Z-K
            1. uses validity or Z-K proof
            2. involves prover -> know something
            3. verifier -> without relying on info or L1 contract
   6. Sequencer
      1. controlled by centralized entity
      2. can lead to censorship and stops and filter transaction
      3. Decentralized sequencer is needed
   7. stage of rollup
      1. 3 stages proposed
      2. stage 0 full training wheel
         1. centralized management
         2. secy council make decision
         3. open source software for data availability
      3. Stage 1
         1. enhanced rollup governance(more than 7 days for unwanted upgrade)
         2. decentralized fraud/validity proof system
      4. stage 2
         1. no training wheels
         2. full decentralized
         3. ample time to exist system
         4. secy council address error adjudicated on-chain
   8. understanding stage
4. What is Bridging funds??
   1. taking funds from one chain to another
   2. 2 types of bridging mechanism
   3. locking(source) and unlocking(dest) mechanism
   4. minting and burning bridge
      1. burned on source and minted on destination
5. What is Finality?
   1. refers to time taken to when txn is settled
   2. l1 smart contract update l2 state
6. Instant confirmations
   1. txn is instant confirmations though there's 24 hrs for finality
   2. wait for full finality and may be rolled back
7. Why is zSync recommended??
   1. security linked to ethereum
   2. EVM compatible
   3. supports ethereum wallet out of the box
   4. Best reason and is low cost and scalable
