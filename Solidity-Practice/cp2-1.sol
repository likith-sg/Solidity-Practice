// SPDX-License-Identifier: GPL-3.0
pragma solidity ^0.8.0;
contract wallet{
    uint balance;
    address owner;
    constructor(uint _balance){
        balance = _balance;
        owner = msg.sender;
    }
    function deposit() public payable{
        require(msg.value % 5 == 0,"Enter in multiples of 5 only");
        balance += msg.value;
    }
    function getBalance() public view returns(uint){
        require(msg.sender == owner, "You are not the owner");
        return balance;
    }
}