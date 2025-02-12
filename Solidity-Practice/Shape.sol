// SPDX-License-Identifier: GPL-3.0
pragma solidity ^0.8.0;
contract Shape{
    function area() public view virtual returns (uint) {
        return 0;
    }
}