// SPDX-License-Identifier: GPL-3.0
pragma solidity ^0.8.0;
contract Counter{
    uint counter;
    address owner;
    constructor(){
        owner = msg.sender;
    }
    function setCount() public{
        counter = 0;
    }
    function Increment() public{
        counter += 1;
    }
    function Decrement() public{
        require(counter > 0,"counter should not go below zero");
        counter -= 1;
    }
     function getCounter() public view returns(uint){
        require(msg.sender == owner, "You are not the owner");
        return counter;
    }
}