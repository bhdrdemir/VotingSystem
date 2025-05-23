// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract Voting {
    struct Candidate {
        string name;
        uint voteCount;
    }

    Candidate[] public candidates;
    mapping(address => bool) public hasVoted;

    constructor() {
        candidates.push(Candidate("Alice", 0));
        candidates.push(Candidate("Bob", 0));
        candidates.push(Candidate("Charlie", 0));
    }

    function vote(uint candidateIndex) public {
        require(!hasVoted[msg.sender], "Already voted.");
        require(candidateIndex < candidates.length, "Invalid candidate index.");
        hasVoted[msg.sender] = true;
        candidates[candidateIndex].voteCount++;
    }
}
