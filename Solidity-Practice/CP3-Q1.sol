// SPDX-License-Identifier: GPL-3.0
pragma solidity ^0.8.0;
contract ManageStudents{
    struct Student{
        string name;
        uint age;
        bool isEnrolled;
    }
    Student[] public student;
    function addStudent(string memory _name, uint _age, bool _isEnrolled) public{
        require(_age >= 18, "students must be at least 18 years old");
        require(keccak256(abi.encodePacked(_name)) != keccak256(abi.encodePacked(" ")), "name cannot be empty");
        student.push(Student( _name, _age, _isEnrolled));
    }
    function getStudent(uint _index)public view returns(string memory, uint, bool){
        Student memory student1 = student[_index];
        return (student1.name, student1.age, student1.isEnrolled);
    }
}