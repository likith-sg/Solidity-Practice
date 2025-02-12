// SPDX-License-Identifier: GPL-3.0
pragma solidity ^0.8.0;
contract ShipmentService{
    address public warehouseOwner;
    struct Order{
        bool placed;
        bool shipped;
        bool delivered;
        uint pin;
    }
    mapping(address => Order) public orders;
    mapping(address => uint) public completedDeliveries;
    constructor(){
        warehouseOwner = msg.sender;
    }
    function shipWithPin(address customerAddress, uint pin) public{
        require(msg.sender == warehouseOwner, "You are not the Owner");
        require(pin >= 1000 && pin <= 9999, "PIN must be a 4-digit and between 1000 and 9999");
        require(customerAddress != warehouseOwner, "Owner cannot be a customer");
        require(!orders[customerAddress].shipped, "Previous order not delivered");
        orders[customerAddress] = Order(true, true, false, pin);
    }
    function acceptOrder(uint pin) public{
        require(orders[msg.sender].placed, "No order placed");
        require(orders[msg.sender].shipped, "Order has not been shipped");
        require(orders[msg.sender].pin == pin, "Incorrect PIN");
        orders[msg.sender].delivered = true;
        orders[msg.sender].shipped = false;
        completedDeliveries[msg.sender]++;
    }
    function checkStatus(address customerAddress) public view returns (string memory){
        if(!orders[customerAddress].placed){
            return "no orders placed";
        } else if(orders[customerAddress].shipped){
            return "shipped";
        } else if(orders[customerAddress].delivered){
            return "delivered";
        } else{
            return "no orders placed";
        }
    }
    function totalCompletedDeliveries(address customerAddress) public view returns (uint){
        return completedDeliveries[customerAddress];
    }
}
