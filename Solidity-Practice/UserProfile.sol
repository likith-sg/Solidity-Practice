// SPDX-License-Identifier: GPL-3.0
pragma solidity ^0.8.0;
contract UserProfile {
    struct Profile {
        string name;
        uint age;
    }
    mapping(address => Profile) private profiles;
    function createProfile(string memory _name, uint _age) public{
        profiles[msg.sender] = Profile(_name, _age);
    }
    function getProfile(address _user) public view returns (string memory, uint){
        Profile memory profile = profiles[_user];
        return (profile.name, profile.age);
    }
}