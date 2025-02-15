// SPDX-License-Identifier: MIT
pragma solidity 0.8.28;

contract MyContract{
    string public outstring = "Hello world";
    function updateOurString(string memory _updatedString) public {
        outstring = _updatedString;
    }
}


