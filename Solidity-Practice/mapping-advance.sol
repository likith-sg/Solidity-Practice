// SPDX-License-Identifier: GPL-3.0
pragma solidity ^0.8.0;
contract PurchaseContract {
    mapping(address => uint256) public purchase;
    mapping(uint256 => uint256) private itemPrices;
    constructor() {
        itemPrices[1] = 1 ether; 
        itemPrices[2] = 2 ether; 
    }
    function getPrice(uint256 itemId) public view returns (uint256) {
        return itemPrices[itemId];
    }
    function purchaseItem(uint256 itemId) public payable {
        uint256 price = getPrice(itemId);
        if (price == 0) {
            revert("Invalid item ID");
        }
        require(msg.value >= price, "Insufficient Ether sent");
        purchase[msg.sender] += price;
        uint256 excess = msg.value - price;
        if (excess > 0) {
            payable(msg.sender).transfer(excess);
        }
    }
}
