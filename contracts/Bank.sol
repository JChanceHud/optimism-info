/// SPDX-License-Identifier: MIT
pragma solidity ^0.6.0;

/// Bank stores Ether and allows users to transfer value to other users

contract Bank {

  mapping (address => uint) balances;

  event Deposit(address from, uint amount);
  event Transfer(address from, address to, uint amount);
  event Withdrawal(address from, address to, uint amount);

  fallback() external payable {
    balances[msg.sender] += msg.value;
    emit Deposit(msg.sender, msg.value);
  }

  function transfer(uint amount, address to) public {
    require(amount <= balances[msg.sender], "Bank: Invalid withdrawal amount");
    require(amount > 0, "Bank: Invalid withdrawal amount");
    balances[msg.sender] -= amount;
    balances[to] += amount;
    emit Transfer(msg.sender, to, amount);
  }

  function withdraw(uint _amount) public {
    withdrawTo(_amount, msg.sender);
  }

  function withdrawTo(uint _amount, address receiver) public {
    uint amount = _amount == 0 ? balances[msg.sender] : _amount;
    require(amount <= balances[msg.sender], "Bank: Invalid withdrawal amount");
    require(amount > 0, "Bank: Invalid withdrawal amount");
    balances[msg.sender] -= amount;
    // system.withdrawEth{value: amount}(receiver);
    emit Withdrawal(msg.sender, receiver, amount);
  }

  function balance(address owner) public view returns (uint) {
    return balances[owner];
  }
}
