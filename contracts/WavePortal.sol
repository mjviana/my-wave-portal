// SPDX-License-Identifier: UNLICENSED

pragma solidity ^0.8.4;

import "hardhat/console.sol";

contract WavePortal {
    uint256 totalWaves;

    mapping(address => uint256) wavesMap;

    constructor() {
        console.log("HI MOM!");
    }

    function wave() public {
        totalWaves += 1;
        wavesMap[msg.sender] += 1;
        console.log(
            "%s has waved! He has waved %d time(s)",
            msg.sender,
            wavesMap[msg.sender]
        );
    }

    function getTotalWaves() public view returns (uint256) {
        console.log("We have %d total waves!", totalWaves);
        return totalWaves;
    }
}
