//SPDX-License-Identifier:MIT
pragma solidity ^0.8.7;

// Implementation (Logic)

contract BoxV2 {
    uint256 internal value;

    event ValueChange(uint256 indexed newValue);

    function store(uint256 newValue) public {
        value = newValue;
        emit ValueChange(newValue);
    } 

    function retrieve()public view returns(uint256){
        return value;
    }

    function version()public pure returns(uint256){
        return 2;
    }

    function increment() public {
        value = value + 1;
        emit ValueChange(value);
    }
}