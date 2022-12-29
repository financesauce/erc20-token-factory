// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import './Token.sol';

contract TokenFactory {

  Token token;

  Token[] public list_of_tokens;

 function createToken(uint256 _initialSupply, string memory _tname, string memory _tiker) external {
    token = new Token(_initialSupply, _tname, _tiker);
    token.transfer(msg.sender, _initialSupply);
    list_of_tokens.push(token);
  }
}
