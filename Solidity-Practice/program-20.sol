// SPDX-License-Identifier: GPL-3.0
pragma solidity ^0.8.0;
contract Inventory {
    struct Product {
        string name;
        uint price;
        uint stockQuantity;
    }
    Product[] public products;
    function AddProduct(string memory _name, uint _price, uint _stockQuantity) public {
        products.push(Product(_name, _price, _stockQuantity));
    }
    function UpdateStock(uint _index, uint _newStockQuantity) public {
        require(_index < products.length, "Product does not exist");
        products[_index].stockQuantity = _newStockQuantity;
    }
    function GetProductDetails(uint _index) public view returns (string memory, uint, uint) {
        require(_index < products.length, "Product does not exist");
        Product storage product = products[_index];
        return (product.name, product.price, product.stockQuantity);
    }
    function BuyProduct(uint _index, uint _quantity) public payable {
        require(_index < products.length, "Product does not exist");
        Product storage product = products[_index];
        require(product.stockQuantity >= _quantity, "Out of Stock");
        uint totalPrice = product.price * _quantity;
        require(msg.value >= totalPrice, "You do not have enough Ether");
        product.stockQuantity -= _quantity;
    }
}
