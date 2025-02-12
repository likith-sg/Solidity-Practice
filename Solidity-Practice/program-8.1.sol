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
        balance = balance + msg.value;
    }
    function getBalance() public view returns(uint){
        require(msg.sender == owner, "You are not the owner");
        return balance;
    }
    function withdraw(address payable _address) payable public returns(uint){
        require(balance > msg.value, "Insufficient balance");
        require(owner == msg.sender, "You are not the owner");
        _address.transfer(msg.value);
        balance -= msg.value;
        return balance;
    }
}