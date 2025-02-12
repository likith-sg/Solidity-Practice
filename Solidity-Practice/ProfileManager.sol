// SPDX-License-Identifier: GPL-3.0
pragma solidity ^0.8.0;
import "Assignments/UserProfile.sol";

contract ProfileManager {
    UserProfile private userProfile;
    constructor() {
        userProfile = new UserProfile();
    }
    function createUserProfile(string memory _name, uint _age) public{
        userProfile.createProfile(_name, _age);
    }
    function getUserProfile(address _user) public view returns (string memory, uint){
        return userProfile.getProfile(_user);
    }
}