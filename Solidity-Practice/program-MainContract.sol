// SPDX-License-Identifier: GPL-3.0
pragma solidity ^0.8.0;
import {Counter} from "Assignments/program-31.sol";

contract MainContract{
    Counter public count;
    constructor(){
        count = new Counter();
    }
    function incrementCounter() public{
        count.incrementcounter();
    }
    function getCounterValue() public view returns(uint){
        return count.getcountervalue();
    }
    function addnum(uint a, uint b) public view returns(uint){
        return count.addnum(a,b);
    }
}