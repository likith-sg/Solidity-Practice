// SPDX-License-Identifier: GPL-3.0
pragma solidity ^0.8.0;
contract Adult{
    uint age;
    function setAge(uint _age) public{
        age = _age;
    }
    function checkifAdult() public view returns(string memory){
        require(age > 18, "You are not an adult");
        return "You are an adult";
    }
}