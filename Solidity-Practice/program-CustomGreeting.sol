// SPDX-License-Identifier: GPL-3.0
pragma solidity ^0.8.0;
import {Greeting} from "Assignments/program-34.sol";

contract CustomGreeting is Greeting{
    function getGreeting() public pure override returns (string memory) {
    return "Hello, welcome to Solidity!";
}
}