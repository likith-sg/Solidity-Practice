// SPDX-License-Identifier: GPL-3.0
pragma solidity ^0.8.0;
contract Array{
    uint[] public arr;
    function addNumber(uint _num) public{
        arr.push(_num);
    }
    function getSum() public view returns(uint){
        uint sum = 0;
        for(uint i = 0; i < arr.length; i++){
            sum += arr[i];
        }
        return sum;
    }
}