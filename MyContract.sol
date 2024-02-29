// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract Token {
    mapping(address => uint256)public balances;

    function sendToken(address _to, uint256 _amount) public {
        require(balances[msg.sender] >= _amount, "Not enought tokens");
        balances[msg.sender] -= _amount;
        balances[_to] += _amount;
    }

    function getTokenBalance() public view returns(uint256) {
        return balances[msg.sender];
    }
}