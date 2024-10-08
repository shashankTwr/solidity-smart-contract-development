// EVM, Ethereum virtual machine
// Ethereum, Polygon, arbitrum, optimism, Zksync



// SPDX-License-Identifier: MIT
pragma solidity ^0.8.19;


// Warnings won't prevent you from deploying and compiling
// Error will prevent you from deploying and compiling 

// We can use the search and look for why there's errors

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


      // better data structure to find list of many arrays
    // mapping as a better data structure compaared to list 

    // mapping(datatypes -> datatyp) visibility Name
    // chelsea -> 232
    // default mapping -> 0 for a key not added
    mapping(string => uint256) public nameToFavouriteNumber;




    // EVM can read and write to several places
    // Easier edition
    // Write and Read: Stack, memory, storage,transient storage, calldata, code, returndata
    // Write(not read): Logs
    // Read(not write): transaction data(&blobhash), Chain data, gas data, program counter and other 


    // calldata, memory, storage
    // calldata and memory means it will exist temporarily
    // memory can be changed temporarily inside function but calldata cannot 
    // memory can be modified like _name="cat"
    // why no memory with default types
    // memory is for special types and not for primitive types
    // storage is not put for temporary variable only permanent

    // any variable outside a function is a storage
    function addPerson(string memory _name, uint256 _favouriteNumber) public {
        // Person newPerson = Person(_favouriteNumber, _name);
        // listOfPeople.push(newPerson)
        listOfPeople.push(Person(_favouriteNumber, _name));
        // quicker way to access number
        nameToFavouriteNumber[_name] = _favouriteNumber;
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


    // transaction hash 0xf4c3bd2c14b0f732f279420ddd33b4051fac400905ec255699ebe8c6b9ad28e6
    // orange function are store function
    // blue function are view functions
  
}