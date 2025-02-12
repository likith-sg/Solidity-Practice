// SPDX-License-Identifier: GPL-3.0
pragma solidity ^0.8.0;
contract ValueStorage{
    uint public a;
    string public message;
    address public ab;
    bool public b;

    function setValues(uint _a, string memory _message, address _ab, bool _b) public{
        a = _a;
        message = _message;
        ab = _ab;
        b = _b;
    }

}