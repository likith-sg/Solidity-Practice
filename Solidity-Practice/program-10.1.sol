// SPDX-License-Identifier: GPL-3.0
pragma solidity ^0.8.0;
contract Votes{
    uint Candidate1Votes;
    uint Candidate2Votes;

    function getVote(uint vote) public{
        require(vote == 1 || vote == 2, "input 1 for cadidate 1 and input 2 for candidate 2");
        if(vote == 1){
            Candidate1Votes += 1;
        }
        else if(vote == 2){
            Candidate2Votes += 1;
        }
    }
    function getResult() public view returns (string memory) {
        if(Candidate1Votes > Candidate2Votes) {
            return "Candidate1 won";
        } 
        else if(Candidate1Votes == Candidate2Votes){
            return "Election Tied";
        }
        else{
            return "Candidate2 won";
        }
    }
}