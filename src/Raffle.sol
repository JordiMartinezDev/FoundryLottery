// Layout of Contract:
// version
// imports
// errors
// interfaces, libraries, contracts
// Type declarations
// State variables
// Events
// Modifiers
// Functions

// Layout of Functions:
// constructor
// receive function (if exists)
// fallback function (if exists)
// external
// public
// internal
// private
// view & pure functions

//SPDX-License-Identifier: MIT

pragma solidity ^0.8.18;

/**
* @title Raffle Contract 
* @author Jordi Martinez 
* @notice Creating a verified random raffle using Chainlink Oracles
* @dev Implements Chainlink VRFv2
 */


contract Raffle{

    error Raffle__EntranceFeeNotEnough();

    uint private immutable i_entranceFee;

    

    constructor(uint entranceFee){
        i_entranceFee = entranceFee;

    }
    function enterRaffle() external payable{
        //require(msg.value >= i_entranceFee, "Not enopugh money");
        if(msg.value < i_entranceFee){
            revert Raffle__EntranceFeeNotEnough();
        }
    }

    function pickWinner() public {

    }

    /** Getter functions */

    function getEntranceFee() public view returns (uint){
        return i_entranceFee;
    }

}