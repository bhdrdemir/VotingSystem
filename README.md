# VotingSystem 🗳️

A decentralized voting smart contract built on Ethereum using Solidity. Deployed and tested via Remix IDE.

## Overview

VotingSystem is a simple, tamper-proof on-chain voting contract. Each Ethereum address can cast exactly one vote for a candidate. All votes and results are transparent and verifiable on the blockchain.

## Features

- **One vote per address** — double voting is prevented at the contract level
- **Transparent results** — anyone can query candidate vote counts on-chain
- **Gas-efficient** — minimal storage and logic footprint
- **MIT licensed** — free to use and extend

## Smart Contract

`contracts/Voting.sol`

| Function | Description |
|---|---|
| `vote(uint candidateIndex)` | Cast a vote for a candidate by index |
| `candidates(uint index)` | Get a candidate's name and vote count |
| `hasVoted(address)` | Check if an address has already voted |

## Tech Stack

- **Solidity** `^0.8.0`
- **Remix IDE** — development & deployment
- **Ethereum** (EVM-compatible)

## Getting Started

1. Open [Remix IDE](https://remix.ethereum.org)
2. Import or paste `contracts/Voting.sol`
3. Compile with Solidity `^0.8.0`
4. Deploy to a test network (e.g. Sepolia) or the Remix VM
5. Call `vote(0)`, `vote(1)`, or `vote(2)` to cast votes
6. Query `candidates(index)` to see results

## Candidates (Default)

| Index | Name |
|---|---|
| 0 | Alice |
| 1 | Bob |
| 2 | Charlie |

## License

MIT
