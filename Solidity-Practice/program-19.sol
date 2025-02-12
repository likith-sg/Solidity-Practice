// SPDX-License-Identifier: GPL-3.0
pragma solidity ^0.8.0;
contract Voting{
    struct Candidate{
        string name;
        uint votes;
    }
    Candidate[] public candidates;
    function addCandidate(string memory _name, uint _votes) public {
        candidates.push(Candidate(_name, _votes));
    }
    function vote(uint _index) public {
        candidates[_index].votes += 1; 
    }
    function getCandidate(uint _index) public view returns (string memory, uint) {
        Candidate memory candidate = candidates[_index];
        return (candidate.name, candidate.votes);
    }
    function getTotalCandidates() public view returns (uint) {
        return candidates.length;
    }
    function getTotalVotes() public view returns (uint) {
        uint totalVotes = 0;
        for (uint i = 0; i < candidates.length; i++) {
            totalVotes += candidates[i].votes;
        }
        return totalVotes;
    }
}
