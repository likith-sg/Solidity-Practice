// SPDX-License-Identifier: GPL-3.0
pragma solidity ^0.8.0;
contract GlobalVariablesDemo{
    function getCallerAddress() public view returns (address){
        return msg.sender;
    }
    function getCurrentBlockTimestamp() public view returns (uint){
        return block.timestamp;
    }
    function getCurrentBlockNumber() public view returns (uint){
        return block.number;
    }
    function getGasPrice() public view returns (uint){
        return tx.gasprice;
    }
    function getTransactionValue() public payable returns (uint){
        return msg.value;
    }
}
