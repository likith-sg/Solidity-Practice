// SPDX-License-Identifier: GPL-3.0
pragma solidity ^0.8.0;
contract FixedArray{
    uint[5] public arr = [1, 21, 33, 5 ,78];
    function updateNumber(uint _num , uint _index) public{
        require(_index < 5, "Index out of bounds");
        arr[_index] = _num;
    } 
     function retrieve(uint index) public view returns(uint){
        return arr[index];
    }
}