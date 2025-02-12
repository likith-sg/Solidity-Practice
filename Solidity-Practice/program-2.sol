// SPDX-License-Identifier: GPL-3.0
pragma solidity ^0.8.0;
contract ValueStorage{
    uint public num;
    function store(uint _num) public{
        num = _num;
    }
    function retrieve() public view returns(uint){
        return num;
    }
}