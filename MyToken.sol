// SPDX-License-Identifier: MIT
pragma solidity ^0.8.18;

contract MyToken {

    string public tokenName = "BENTLY";
    string public tokenSymbol = "BTY";
    uint256 public total = 100;

    mapping(address => uint) public tokenBalances;

    function minting(address _address, uint _amount) public {
        total += _amount;
        tokenBalances[_address] += _amount;
    }

    function burning(address _address, uint _amount) public {
        require(tokenBalances[_address] >= _amount, "Balance Low");
        total -= _amount;
        tokenBalances[_address] -= _amount;
    }
}
