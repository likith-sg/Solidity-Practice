// SPDX-License-Identifier: GPL-3.0
pragma solidity ^0.8.0;
contract CarRental{
    struct Car{
        string model; 
        uint price;
        bool availability;
    }
    Car[] public car;
    function addCar(string memory _model, uint _price, bool _availability) public{
        car.push(Car(_model, _price, _availability));
    }
    function UpdatePrice(uint _price) public pure{
        Car memory car1;
        car1.price = _price;
    }
    function retrieve(uint _index) public view returns(string memory, uint, bool){
        Car storage car2 = car[_index];
        return (car2.model, car2.price, car2.availability);
    }
}