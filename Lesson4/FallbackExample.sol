// SPDX-License-Identifier: MIT

pragma solidity ^0.8.18;

contract FallbackExample{
    uint256 public result;
    receive() external payable{
        result = 1;
    }

    fallback() external payable{
        result = 3;
    }
}
// recieve 
// since you're sendign data
// you are looking for fallback
// fallback can work when data is send along transaction
// constructor is another special function