// SPDX-License-Identifier: GPL-3.0
pragma solidity ^0.8.0;
contract Array{
    struct Employee{
        string name;
        uint salary;
        uint phoneno;
    }
    Employee[] public employee;
    function addEmployee(string memory _name, uint _salary, uint _phoneno) public{
        require(_salary > 100000, "Insufficient Salary");
        employee.push(Employee(_name, _salary, _phoneno));
    }
    function retrieveEmployee(uint _index) public view returns(string memory, uint, uint){
        Employee storage employees = employee[_index];
        return (employees.name, employees.salary, employees.phoneno);
    }
}