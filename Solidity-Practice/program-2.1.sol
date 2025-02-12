// SPDX-License-Identifier: GPL-3.0
pragma solidity ^0.8.0;
contract ValueStorage{
    string public message;
    function store(string memory _message) public{
        message= _message;
    }
    function retrieve() public view returns(string memory){
        return message;
    }
}