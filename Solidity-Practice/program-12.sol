// SPDX-License-Identifier: GPL-3.0
pragma solidity ^0.8.0;
contract SimpleArray{
    uint[] public arr;
    function add(uint _num) public{
        arr.push(_num);
    }
    function retrieve(uint index) public view returns(uint){
        return arr[index];
    }
    function getLength() public view returns(uint){
        return arr.length;
    }
}