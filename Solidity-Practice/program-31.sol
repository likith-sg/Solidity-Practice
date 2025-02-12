// SPDX-License-Identifier: GPL-3.0
pragma solidity ^0.8.0;
contract Counter{
    uint count;
    function incrementcounter() public{
        count += 1;
    }
    function getcountervalue()public view returns(uint){
        return count;
    }
    function addnum(uint a, uint b) public pure returns(uint){
        return (a+b);
    }
}