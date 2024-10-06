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
    uint256 myFavouriteNumber; // 0 ie default value of uint256
    
    // array of integer 0 indexed
    uint256[] listOfFavoriteNumbers; // [0,1, 92]


    // type of person
    // structs are indexed as well
    struct Person{
        uint256 favouriteNumber;
        string name;
    }


    // List of structs
    /* Person public john = Person(555,"John");
    Person public pat = Person({favouriteNumber: 7, name: "pat"});
    Person public Mariah = Person({favouriteNumber: 7, name: "Mariah"});
 */


    // dynamic array since there's no size declared in struct array
    // would be static if we declared it as 3
    Person[] public listOfPeople; // []

    function addPerson(string memory _name, uint256 _favouriteNumber) public {
        // Person newPerson = Person(_favouriteNumber, _name);
        // listOfPeople.push(newPerson)

        listOfPeople.push(Person(_favouriteNumber, _name));
    }


    function store(uint256 _favouriteNumber) public {
        myFavouriteNumber = _favouriteNumber;
    }

    // view, pure
    // view means we will just the read state
    // pure disallow reading and updating storage
    // pure likens us to reading constants??
    // if another contract calls retrieve cost gas only when
    // gas cost transaction calls it

    // returns specifies whatever datatype is returned
    function retrieve() public view returns(uint256){
        return myFavouriteNumber;
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