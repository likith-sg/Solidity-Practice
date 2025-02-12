// SPDX-License-Identifier: GPL-3.0
pragma solidity ^0.8.0;
import "Assignments/program-32.1.sol";

contract Calculator{
    MathOperations mathOps;
    constructor(){
        mathOps = new MathOperations();
    }
    function add(uint a, uint b) public view returns (uint){
        return mathOps.add(a, b);
    }
    function subtract(uint a, uint b) public view returns (uint){
        return mathOps.subtract(a, b);
    }
}