// SPDX-License-Identifier: GPL-3.0
pragma solidity ^0.8.0;
contract DynamicArray{
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
    function Delete() public{
        arr.pop();
    }
    function remove(uint index) public{
         delete arr[index];
    }
}