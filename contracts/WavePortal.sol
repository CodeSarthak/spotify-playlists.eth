// SPDX-License-Identifier: UNLICENSED

pragma solidity ^0.8.0;

import "hardhat/console.sol";

contract WavePortal {
        uint256 totalWaves;
        uint256 count;
        uint256 j = 0;
        mapping(address => uint256) public waves;
        mapping (uint => address) public accountIndex;



    constructor() {
        console.log("Sarthak's first smart contract!");
    }
    
    function wave() public {
        totalWaves += 1;
        waves[msg.sender] += 1;
        accountIndex[count] = msg.sender;
        count += 1;
        console.log("%s has waved!", msg.sender);
    }

    function getEachWave() public{
    for(uint i=0;i<count-1;i++)
    {
        console.log("Number of waves from %s account : %d", accountIndex[i] , waves[accountIndex[i]]);
    }
}

    function getTotalWaves() public view returns (uint256) {
        console.log("We have %d total waves!", totalWaves);
        return totalWaves;
    }



}