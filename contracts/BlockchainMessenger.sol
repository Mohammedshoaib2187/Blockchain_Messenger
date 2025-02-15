// SPDX-License-Identifier: MIT
pragma solidity 0.8.28;

contract BlockchainMessenger{
    uint public changeCounter;
    address public owner;
    string public message;

    constructor(){
        owner = msg.sender;
    }

    function updateTheMessage(string memory _message) public{
        if(msg.sender == owner){
            message = _message;
            changeCounter++;
        }
    }
}