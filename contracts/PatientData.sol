// // SPDX-License-Identifier: MIT
// pragma solidity ^0.8.0;

// contract PatientData {
//     struct Patient {
//         uint id;
//         string name;
//         uint age;
//         string condition;
//         string treatment;
//     }

//     mapping(uint => Patient) public patients;
//     uint public patientsCount;

//     function addPatient(string memory _name, uint _age, string memory _condition, string memory _treatment) public {
//         patientsCount++;
//         patients[patientsCount] = Patient(patientsCount, _name, _age, _condition, _treatment);
//     }

//     function getPatient(uint _id) public view returns (string memory, uint, string memory, string memory) {
//         Patient memory patient = patients[_id];
//         return (patient.name, patient.age, patient.condition, patient.treatment);
//     }

//     function modifyPatient(uint _id, string memory _name, uint _age, string memory _condition, string memory _treatment) public {
//     patients[_id] = Patient(_id, _name, _age, _condition, _treatment);
//     }

// }

pragma solidity ^0.8.0;

contract PatientData {
    string public sjsData;

    function setSJSData(string memory _data) public {
        sjsData = _data;
    }

    function getSJSData() public view returns (string memory) {
        return sjsData;
    }
}
