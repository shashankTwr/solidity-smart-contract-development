// SPDX-License-Identifier: MIT
pragma solidity ^0.8.19;

contract SimpleStorage {
    // datatypes can be boolean, int, uint, address, bytes

    /* bool hasFavouriteNumber = false;
    uint256 favouriteNumber = 88;
    string favouriteNumberInText = "eighty-eight";
    int256 favouriteInt = -88;
    // address myAddress = 0xd9145CCE52D386f254917e481eB44e9943F39138;
    bytes favouriteBytes32 = "cat"; 
    // byte and bytes32 is different like uint and uint256 */

    // favouriteNumber gets initialized
    uint256 favouriteNumber; // 0 ie default value of uint256
    

    function store(uint256 _favouriteNumber) public {
        favouriteNumber = _favouriteNumber;
    }

    // view, pure
    // view means we will just the read state
    // pure disallow reading and updating storage
    // pure likens us to reading constants??
    // if another contract calls retrieve cost gas only when
    // gas cost transaction calls it

    // returns specifies whatever datatype is returned
    function retrieve() public view returns(uint256){
        return favouriteNumber;
    }


    // 0xd9145CCE52D386f254917e481eB44e9943F39138
    // deploying smart contract means we are doing transaction

    // visibility of a number
    // 4 type of visibility
    // public : visible externally aand internally(creates a getter function)
    // private : only visible in hte current contract
    // external only visible externally(only for functions) not for variables
    // internal -> visible internally defaulted
    // current and child contracts can



    // Naming conventions 
    // state and local variable

    // variable scope 
    // scoping of variables 



}