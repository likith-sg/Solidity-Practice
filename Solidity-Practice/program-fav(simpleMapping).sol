// SPDX-License-Identifier: GPL-3.0
pragma solidity ^0.8.0;
contract Fav{
    struct Favourite{
        string name;
        uint num;
    }
    mapping(string => uint)public NametoNum;
    Favourite[] public favourite;
    function add(string memory _name, uint _num)public{
        favourite.push(Favourite(_name,_num));
        NametoNum[_name] = _num;
    }
    function retrieve(uint _index) public view returns(string memory , uint){
        Favourite storage favourites = favourite[_index];
        return(favourites.name, favourites.num);
    }
    function retrieve1(string memory _index) public view returns(uint){
        return NametoNum[_index]; 
    }
}