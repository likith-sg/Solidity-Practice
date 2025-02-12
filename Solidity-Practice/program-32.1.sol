// SPDX-License-Identifier: GPL-3.0
pragma solidity ^0.8.0;
contract MathOperations{
    function add(uint a, uint b) public pure returns (uint) {
        return a + b;
    }
    function subtract(uint a, uint b) public pure returns (uint){
        require(a >= b, "Result would be negative");
        return a - b;
    }
}