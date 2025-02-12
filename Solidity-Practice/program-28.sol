// SPDX-License-Identifier: GPL-3.0
pragma solidity ^0.8.0;
contract WarehouseInventory{
    struct Inventory{
        string name;
        uint quantity;
    }
    mapping(uint => Inventory) public inventory;
    function addItem(uint _itemId, string memory _name, uint _quantity) public{
        inventory[_itemId] = Inventory(_name, _quantity);
    }
    function updateQuantity(uint _itemId, uint _newQuantity) public{
        require(inventory[_itemId].quantity > 0, "Item does not exist");
        inventory[_itemId].quantity = _newQuantity;
    }
    function getQuantity(uint _itemId) public view returns (string memory, uint){
        require(inventory[_itemId].quantity > 0, "Item does not exist");
        return (inventory[_itemId].name, inventory[_itemId].quantity);
    }
}
