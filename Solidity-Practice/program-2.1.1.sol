// SPDX-License-Identifier: GPL-3.0
pragma solidity ^0.8.0;
contract ValueStorage{
    string public message;
    constructor(string memory _message){
        message = _message;
    }
    function retrieve() public view returns(string memory){
        return message;
    }
    function update(string memory UpdatedMessage) public{
        message = UpdatedMessage;
    }
}