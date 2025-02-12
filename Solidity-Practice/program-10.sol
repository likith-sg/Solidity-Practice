// SPDX-License-Identifier: GPL-3.0
pragma solidity ^0.8.0;
contract Votes{
    uint YesVotes;
    uint NoVotes;

    function getVote(bool vote) public{
        if(vote == true){
            YesVotes += 1;
        }
        else{
            NoVotes += 1;
        }
    }
    function check() public view returns (string memory) {
        if(YesVotes > NoVotes) {
            return "Proposal Passed";
        } 
        else if(YesVotes == NoVotes){
            return "Proposal Tied";
        }
        else{
            return "Proposal Failed";
        }
    }
}