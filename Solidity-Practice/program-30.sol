// SPDX-License-Identifier: GPL-3.0
pragma solidity ^0.8.0;
contract SimpleToken{
    string public name;
    uint public totalSupply;
    mapping(address => uint) public balanceOf;
    constructor(string memory _name, uint _initialSupply) {
        name = _name;
        totalSupply = _initialSupply;
        balanceOf[msg.sender] = _initialSupply;  
    }
    function transfer(address _to, uint _value) public {
        require(balanceOf[msg.sender] >= _value, "Insufficient balance");
        balanceOf[msg.sender] -= _value;
        balanceOf[_to] += _value;
    }
}
