// Get funds from user
// Withdraw funds
// Set a minimum funding value in USD

// SPDX-License-Identifier: MIT

pragma solidity ^0.8.18;


// aggregatorV3interface with the interface which has 
// to get ABI 
// can we import 
// but by at its address

import {PriceConverter} from "./PriceConverter.sol";
// Gas estimation failed is general failure message

// constant, immutable
// assigned at compile time 
// no longer storage spot
// use convenntion


error NotOwner();

contract fundMe{
    
    using PriceConverter for uint256;

    // 5e18 5*(10**18)
    uint256 public constant MINIMUM_USD = 1 * 1e18;
    // funder variable
    address[] public funders;
    mapping(address  => uint256 ) public addressToAmountFunded;

    address public immutable i_owner;

    constructor() {
        // deployer of the contract
        i_owner = msg.sender;
    }

    function fund()  public payable{
        // Allow users to send $
        // have a minimum $1 sent
        // 1. how do we send ETH to this contract?
        // require(getConversionRate(msg.value) >= minimumUSD, "didn't send enough ETH");

        // initial parameter for a library function is usually 
        require(msg.value.getConversionRate() >= MINIMUM_USD, "didn't send enough ETH");
        funders.push(msg.sender);
        addressToAmountFunded[msg.sender] += msg.value;
        // a ton of computation will get refunded
        
        // What is a revert?
        // Undo any actions that have been done and send the remaining gas back
        // if you send aa failed transaction gas will still send
    }

    // modifier in function declaration executes first

    function withdraw() public onlyOwner{
        // for loop
        for(uint256 funderIndex = 0; funderIndex < funders.length; funderIndex++){
            addressToAmountFunded[funders[funderIndex]] = 0;
        }
        // reset the arraay
        funders = new address[](0);
        // give back the value
        // 2. how do we send ETH to this contract?
        // 3 different ways

        // transfer simplest and surface level most sense to use
        // msg.send typer is address
        // payable msg.sender is payable address
        // payable(msg.sender).transfer(address(this).balance);
        // // issues with transfer (solidity by example)
        // // transfer is capped with 2300 gas and throws error
        // // automatically reverts

        // // send
        // // capped with 2300 gas and return false
        // bool sendSuccess = payable(msg.sender).send(address(this).balance);
        // require(sendSuccess, "send failed");

        // revert if send fails
        // call
        // not capped with gas
        // 1st lower level command
        // can call virtually any function without using any ABI
        // bytes are memory
        (bool callSuccess,) = payable(msg.sender).call{value: address(this).balance}("");
        require(callSuccess,"Call Failed");
        // call is the recommended way for most cases

    }

    modifier  onlyOwner(){
        // require(msg.sender == i_owner,"sender is not owner!");
        // more gas efficient
        // revert does the same but conditional beforehand
        if(msg.sender != i_owner)
            revert NotOwner();
        _;
        // order of _ decides when function is executed
        // if _ is above then function is executed first
    }
    
    // What happens sif someone sends this contract ETH without calling the fund function
    // recieve()
    // fallback()
    // 2 of these special functions
    // a contract can have atmost one recieve function
    // cannot return anything, external visibility

    receive() external payable {
        fund();
     }
    
    fallback() external payable {
        fund();
     }

}


