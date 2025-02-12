// SPDX-License-Identifier: GPL-3.0
pragma solidity ^0.8.0;
contract PurchaseContract{
    mapping(address => uint256) public purchase;
    uint256 public apple = 1 ether;
    uint256 public banana = 2 ether;
    function getPrice(uint _Id) public view returns (uint256) {
        if (_Id == 1) {
            return apple;
        } else if (_Id == 2) {
            return banana;
        } else {
            return 0; 
        }
    }
    function purchaseItem(uint _Id) public payable {
        uint256 price = getPrice(_Id); 
        require(price > 0, "Invalid item ID");
        require(msg.value >= price, "Insufficient Ether sent");
        purchase[msg.sender] += price;
        if (msg.value > price) {
            uint256 excess = msg.value - price;
            payable(msg.sender).transfer(excess);
        }
    }
}
