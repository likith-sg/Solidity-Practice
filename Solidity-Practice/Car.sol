// SPDX-License-Identifier: GPL-3.0
pragma solidity ^0.8.0;
import "Assignments/Vehicle.sol";

contract Car is Vehicle{
    uint public numberOfDoors;
    constructor(string memory _model, uint _numberOfDoors) Vehicle(_model){
        numberOfDoors = _numberOfDoors;
    }
    function details() public override view returns (string memory){
        return string(abi.encodePacked("This is a car. Model: ", model, ", Doors: ", uint2str(numberOfDoors)));
    }
    function uint2str(uint _i) internal pure returns (string memory){
        return _i == 0 ? "0" : string(abi.encodePacked(uint8(48 + _i % 10), uint2str(_i / 10)));
    }
}