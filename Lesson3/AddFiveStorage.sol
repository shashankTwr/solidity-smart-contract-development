// Remix storage factory inheritance
// SPDX-License-Identifier: MIT
pragma solidity ^0.8.19;
import {SimpleStorage} from "./SimpleStorage.sol";


// AddFiveStorage as child contract and inherit all functionality of SimpleStorage contract

contract AddFiveStorage is SimpleStorage {
    // add custom functionality
    // pure not view because we are not reading from storage
    // function sayHello() public pure returns(string memory){
    //     return "hello";
    // }

    // +5 
    // overrides
    // virtual override
    // virtual is in the parent class
    function store(uint256 _newNumber) public override{
        myFavouriteNumber = _newNumber + 5;
    }
}