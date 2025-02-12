// SPDX-License-Identifier: GPL-3.0
pragma solidity ^0.8.0;
contract MembershipManagement {
    struct Member {
        uint id;
        string name;
        string contactDetails;
        uint membershipFee;
    }
    mapping(uint => Member) public members;
    uint public totalMembers;
    uint public Threshold = 1 ether; 
    function addMember(uint _id, string memory _name, string memory _contactDetails) public payable {
        require(msg.value >= Threshold, "Membership fee is below the required threshold.");
        members[_id] = Member({id: _id, name: _name, contactDetails: _contactDetails, membershipFee: msg.value});
        totalMembers++;
    }
    function retrieveMember(uint _id) public view returns (uint, string memory, string memory, uint) {
        Member memory member = members[_id];
        return (member.id, member.name, member.contactDetails, member.membershipFee);
    }
    function getTotalMembers() public view returns (uint) {
        return totalMembers;
    }
}
