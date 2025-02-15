// SPDX-License-Identifier: MIT
pragma solidity 0.8.28;

contract SampleBoolean{
    bool public myBool;
    function setMyBool(bool _myBool) public{
        myBool = _myBool;
    }
    uint public myInt;
    function incrementMyInt() public {
       myInt++ ;
    }
    uint8 public myUint;
    function decrement()public {
        unchecked{
            myUint--;
        }
    }

    

    
}


