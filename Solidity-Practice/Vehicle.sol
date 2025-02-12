// SPDX-License-Identifier: GPL-3.0
pragma solidity ^0.8.0;
contract Vehicle{
    string public model;
    constructor(string memory _model){
        model = _model;
    }
    function details() public virtual view returns (string memory){
        return "This is a vehicle.";
    }
}