// SPDX-License-Identifier: GPL-3.0
pragma solidity ^0.8.0;
contract SimpleStorage{
    uint storedNumber;
    address addressVar;
    constructor(uint a, address b){
        storedNumber= a;
        addressVar= b;
    }
    function update(uint a, address b)public{
        storedNumber = a;
        addressVar = b;
    }
    function retrieve()public view returns(uint, address){
        return(storedNumber, addressVar);
    }
}