// SPDX-License-Identifier: GPL-3.0
pragma solidity ^0.8.0;
contract Mapping{
    struct student{
        uint id;
        string name;
        string grade;
    }
    mapping(uint => student)public stdInfo;
    function add(uint _id, string memory _name, string memory _grade)public{
        stdInfo[_id] = student({id: _id, name: _name, grade: _grade});
    }
    function retrieve(uint _id)public view returns(uint, string memory, string memory){
        student memory students = stdInfo[_id];
        return(students.id,students.name,students.grade);
    }
}