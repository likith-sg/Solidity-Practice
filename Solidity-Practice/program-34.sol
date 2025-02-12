// SPDX-License-Identifier: GPL-3.0
pragma solidity ^0.8.0;
contract Greeting{
    function getGreeting() public virtual returns(string memory){
        return "hello world";
    }
}