// SPDX-License-Identifier: MIT
pragma solidity ^0.8.18;


contract phoneBook{
    
    struct Contacts {
        string name;
        uint256 phoneNumber;
        string email;
    }

    Contacts[] contacts;

    //Create a function to add a new contact to our contacts
    function addContact(string memory _name, uint256 _phoneNumber,
    string memory _email) public  {
        contacts.push(Contacts(_name, _phoneNumber, _email));
    }

    //function to retrieve a contact by index
    function retrieveContact (uint256 index) public view returns(string
    memory, uint256, string memory){
        require(index < contacts.length, "Index out of Bounds");
        return (contacts[index].name, contacts[index].phoneNumber, contacts[index].
        email);
    }

    //updating a contacts details
    function updateContact(uint256 _index, string memory name1, uint256
    phoneNumber1, string memory email1) public{
        require(_index < contacts.length, "Index out of Bounds");
        contacts[_index].name = name1;
        contacts[_index].phoneNumber = phoneNumber1;
        contacts[_index].email = email1;

    }

}
