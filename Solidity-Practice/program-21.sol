// SPDX-License-Identifier: GPL-3.0
pragma solidity ^0.8.0;
contract Compare{
    string msg1;
    string msg2;
    function store(string memory _msg1, string memory _msg2) public{
        msg1= _msg1;
        msg2= _msg2;
    }
    function compare_str() public view returns(string memory){
        if(keccak256(abi.encodePacked(msg1)) == keccak256(abi.encodePacked(msg2))){
            return "msg1 and msg2 are equal";
        }
        else{
            return "msg1 and msg2 are not equal";
        }
    }
}