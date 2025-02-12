// SPDX-License-Identifier: GPL-3.0
pragma solidity ^0.8.0;
contract GradeManagement{
    struct student{
        uint id;
        string name;
        string grade;
    }
    mapping(uint => student)public studentGrades;
    function add(uint _id, string memory _name, string memory _grade)public{
        studentGrades[_id] = student({id: _id, name: _name, grade: _grade});
    }
    function retrieve(uint _id)public view returns(uint, string memory, string memory){
        student memory students = studentGrades [_id];
        require(keccak256(abi.encodePacked(students.grade)) == keccak256(abi.encodePacked("pass")), "You have failed, cannot retrieve grade");
        return(students.id,students.name,students.grade);
    }
}