// SPDX-License-Identifier: MIT
pragma solidity 0.8.28;

contract Message{
    address public SomeAddress;
    function updateSomeAddress() public{
        SomeAddress = msg.sender;
    }
}