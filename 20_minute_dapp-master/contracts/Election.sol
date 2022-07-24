// SPDX-License-Identifier: MIT
pragma solidity 0.8.15; 

// a-0x5B38Da6a701c568545dCfcB03FcB875f56beddC4
// b-0xAb8483F64d9C6d1EcF9b849Ae677dD3315835cb2
// c-0x4B20993Bc481177ec7E8f571ceCaE8A9e22C02db
// d-0x78731D3Ca6b7E34aC0F824c42a7cC18A495cabaB


contract Bank
{
   string name = "Alpha";
   string symbol = "aaa";
   uint256 public total;

    event Transfer(
        address _from,
        address _to,
        uint256 _value
    );

    mapping(address => uint256) public balanceOf;

    function Token(uint256 _token) public{
        total = _token;
        balanceOf[msg.sender] = _token;
    }

    function transfer(address _to,uint256 _value) public{
        balanceOf[msg.sender] -= _value;
        balanceOf[_to] +=_value;

        emit Transfer(msg.sender, _to, _value);
    }

}