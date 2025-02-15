// SPDX-License-Identifier: MIT
pragma solidity 0.8.28;

contract SampleString{
    string public myString = "Hello world";
    bytes public myBytes = "Hello World";

    function setMyString(string memory _myString) public{
        myString = _myString;
    }

    function compareStrings(string memory _myString) public view returns(bool){
        return keccak256(abi.encodePacked(myString))==keccak256(abi.encodePacked(_myString));
    }

    uint public length;

    function lengthString(string memory _mystring) public {
        length = bytes(_mystring).length;
    }


    address public someAddress;

    function setSomeAddress(address _someAddress) public {
        someAddress = _someAddress;
    }


    function getaddressbalance() public view returns(uint){
        return someAddress.balance;
    }
}


