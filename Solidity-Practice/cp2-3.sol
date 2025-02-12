// SPDX-License-Identifier: GPL-3.0
pragma solidity ^0.8.0;
contract Inventory{
    uint Item1;
    uint Item2;
    address owner;
    constructor(uint _item1, uint _item2){
        Item1 = _item1;
        Item2 = _item2;
        owner = msg.sender;
    }
    function status(bool lockedVariable)public pure returns(string memory){
        if(lockedVariable == true){
            return "Inventory Locked";
        }
        else {
            return "Inventory Unlocked";
        }
    }
    function Add1(bool lockedVariable, uint a)public{
        require(lockedVariable == false, "Inventory locked, cannot add");
        require(msg.sender == owner, "You are not the owner");
        Item1 += a;
    }
    function Add2(bool lockedVariable, uint a)public{
        require(lockedVariable == false, "Inventory locked, cannot add");
        require(msg.sender == owner, "You are not the owner");
        Item2 += a;
    }
    function Remove1(bool lockedVariable, uint a)public{
        require(lockedVariable == false, "Inventory locked, cannot add");
        require(msg.sender == owner, "You are not the owner");
        Item1 -= a;
    }
    function Remove2(bool lockedVariable, uint a)public{
        require(lockedVariable == false, "Inventory locked, cannot add");
        require(msg.sender == owner, "You are not the owner");
        Item2 -= a;
    }
    function Check1() public view returns(uint){
        require(msg.sender == owner, "You are not the owner");
        return Item1;
    }
     function Check2() public view returns(uint){
        require(msg.sender == owner, "You are not the owner");
        return Item2;
    }

}