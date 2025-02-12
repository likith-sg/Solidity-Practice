// SPDX-License-Identifier: GPL-3.0
pragma solidity ^0.8.0;
contract ManageStudents{
    struct Student{
        string name;
        uint[] grades;
    }
    mapping(address => Student) students;
    function addStudent(address _studentAddress, string memory _name)public{
        students[_studentAddress] = Student({name : _name, grades: grades.length = 0});
    } 
    function addGrade(address _studentAddress, uint _grade)public{
        require(keccak256(abi.encodePacked(students[_studentAddress].name)) != keccak256(abi.encodePacked(" ")), "Student does not exist");
        students[_studentAddress] = Student({grades : _grade});
    }
    function getGrades(address _studentAddress)public view returns(uint){
        return students[_studentAddress].grades;
    }
    function getStudentInfo(address _studentAddress)public view returns(string memory, uint){
        uint Length = students[_studentAddress].grades.length;
        return(students[_studentAddress].name, Length);
    }
}