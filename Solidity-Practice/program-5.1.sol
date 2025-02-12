// SPDX-License-Identifier: GPL-3.0
pragma solidity ^0.8.0;
contract calculator{
    uint public result;
    function add(uint a, uint b) public returns(uint){
        result = a + b;
        return result;
    }
    function sub(uint a, uint b) public returns(uint){
        result = a - b;
        return result;
    }
    function mul(uint a, uint b) public returns(uint){
        result = a * b;
        return result;
    }
    function div(uint a, uint b) public returns(uint){
        result = a / b;
        return result;
    }
}