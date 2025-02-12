// SPDX-License-Identifier: GPL-3.0
pragma solidity ^0.8.0;
contract SimpleMapping{
    mapping(uint => string)public names;
    function setName(string memory _name, uint _num)public{
        names[_num] = _name;
    }
    function getName(uint _index) public view returns(string memory){
        return names[_index]; 
    }
}