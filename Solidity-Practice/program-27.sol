// SPDX-License-Identifier: GPL-3.0
pragma solidity ^0.8.0;
contract crowdFunding{
    address CampaignOwner;
    uint public goal;
    uint public totalFunds;
    constructor(uint _goal){
        CampaignOwner = msg.sender;
        goal = _goal;
    }
    function contribute()public payable{
        require(totalFunds < goal, "Goal reached!");
        totalFunds += msg.value;
    }
    function withdraw() public payable returns(string memory){
        require(totalFunds > goal, "Goal not yet reached!");
        require( CampaignOwner == msg.sender, "You are not the Campaign owner");
        if(totalFunds > goal){
            payable(CampaignOwner).transfer(totalFunds);
            return "Campaign is complete";
        }
        return "Campaign is still continuing";
    }
}