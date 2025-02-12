// SPDX-License-Identifier: GPL-3.0
pragma solidity ^0.8.0;
contract state{
    uint a;
    constructor(uint _a){
        a = _a;
    }
    function check() public view returns (string memory) {
        if(a % 2 == 0) {
            return "Even";
        } 
        else {
            return "Odd";
        }
    }
}