// SPDX-License-Identifier: MIT
pragma solidity 0.8.28;

contract ViewPure{
    uint public myStorageVariable;
    address public myAddress;

    constructor(address _someAddress){
        myAddress= _someAddress;
    }

    function setMyaddress(address _myAddress) public{
        myAddress = _myAddress;
    }

    function setMyaddressToSender() public{
        myAddress = msg.sender;
    }

    function getMyStorageVariable() public view returns(uint){
        return myStorageVariable;
    }

    function getAddition(uint a, uint b) public pure returns(uint){
        return a+b;
    }

    
}