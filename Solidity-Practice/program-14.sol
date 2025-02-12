// SPDX-License-Identifier: GPL-3.0
pragma solidity ^0.8.0;
contract StringArray{
    string[] public arr;
    function addName(string memory _name) public{
        arr.push(_name);
    }
    function getName(uint _index) public view returns(string memory){
        require(_index < getNamesCount(), "index is out of bounds");
        return arr[_index];
    }
    function getNamesCount() public view returns(uint){
        return arr.length;
    }
}