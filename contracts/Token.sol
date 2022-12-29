// SPDX-License-Identifier: MIT

pragma solidity ^0.8.0;

import "@openzeppelin/contracts/token/ERC20/ERC20.sol";

//just to be different

contract Token is ERC20 {

mapping (address => uint) mapped;

    constructor(uint256 initialSupply, string memory _tname, string memory _tiker) ERC20(_tname, _tiker) {
        _mint(msg.sender, initialSupply);
    }
}
