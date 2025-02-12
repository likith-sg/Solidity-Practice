// SPDX-License-Identifier: GPL-3.0
pragma solidity ^0.8.0;
contract EmployeeData{
    struct Employee{
        string name; 
        uint salary;
        string department;
    }
    Employee[] public employee;
    function addEmployee(string memory _name, uint _salary, string memory _department) public{
        employee.push(Employee(_name, _salary, _department));
    }
    function UpdateSalary(uint _salary) public pure{
        Employee memory employee1;
        employee1.salary = _salary;
    }
    function CalculateBonus(uint salary) public pure returns(uint bonus){
        Employee memory employee1;
        if(employee1.salary > 150000){
        bonus = 10000 + salary;
        }
    }
}