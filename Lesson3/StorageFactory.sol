// SPDX-License-Identifier: MIT

// version of solidity should be kept in mind

pragma solidity ^0.8.19;
// import the SimpleStorage contract 
// import "./SimpleStorage.sol";
// named import
// if simpleStorage as multiple contracts
// we want to only take the contract we need and lower gas cost
// if we only want to import a particular contract
// we can import multiple contracts
// named imports is always better and save gas cost and headache
import {SimpleStorage} from "./SimpleStorage.sol";

contract StorageFactory{
    
    // uint256 public favouriteNumber
    // type visibility name
    // Solidity is case sensitive
    // SimpleStorage contract
    // simpleStorage variable
    SimpleStorage[] public listOfSimpleStorageContracts;
    // instead of array of contracts and it was an array of address
    // address[] public listOfSimpleStorageAddresses;
    //  we could just typecasting and use the contract and addresses
    // SimpleStorage mySimpleStorage = SimpleStorage

    // createSimpleStorgae is orange because it gives us simpleStorage
    // function call executes first
    // variable contract simpleStorage gets assigned an address
    // ie contract address
    // deploying another contract
    // every time function is called new simpleStorage will be created
    function createSimpleStorageContract() public {
        // How does sthe storage factory know what the simple storage contract looks like
        // first method we can do is paste the contract above like we do multiple classes in other language
        SimpleStorage newSimpleStorageContract = new SimpleStorage();
        listOfSimpleStorageContracts.push(newSimpleStorageContract);

    }

    function sfStore(uint256 _simpleStorageIndex, uint256 _newSimpleStorageNumber) public{
        // to contract automatically we get address and ABI
        // address
        // ABI(technically a lie, you need function selector)
        // Application Binary interface
        // compiler automatically knows the ABI
        // we have the abi because we are importing SimpleStorage ABI
        // we retrieve the contract at simplestorageindex
        // then we store a number in that
        // rather than creating a contract and adding we can 
        // directly do the operations saving gas?
        listOfSimpleStorageContracts[_simpleStorageIndex].store(_newSimpleStorageNumber);
    }

    // function to read
    // utilizing retrieve function of simpleStorage and retrieving number
    function sfGet(uint256 _simpleStorageIndex) public view returns(uint256){
        return listOfSimpleStorageContracts[_simpleStorageIndex].retrieve();
    }

}