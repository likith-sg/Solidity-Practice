// SPDX-License-Identifier: GPL-3.0
pragma solidity ^0.8.0;
import "Assignments/Shape.sol";

contract Rectangle is Shape{
    uint public length;
    uint public width;
    constructor(uint _length, uint _width){
        length = _length;
        width = _width;
    }
    function area() public view override returns (uint){
        return (length * width);
    }
}