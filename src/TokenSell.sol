// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.17;

import "@openzeppelin/contracts/access/Ownable.sol";
import "@openzeppelin/contracts/token/ERC20/ERC20.sol";

contract TokenSell is ERC20, Ownable {
  uint private _rate;

event ConversionRateUpdated(uint oldRate, uint newRate);
  constructor(
    string memory name_,
    string memory symbol_
  ) ERC20(name_, symbol_) {
    _mint(address(this), 22_000_000 * 1E18);
    _rate = 10000;
  }

  function buy() external payable {
    require(msg.value > 0, "Ether to send must be > 0");
    uint tokenAmount = msg.value * _rate;
    require(
      balanceOf(address(this) > amount, "Not enough tokens")
    );

    _transfer(address(this), msg.sender, amount);
  }

  function setRate(uint _newRate) external onlyOwner{
    uint oldRate = _rate;
    _rate = _newRate;
    emit ConversionRateUpdated(oldRate, _rate);
  }

  function getRate() external view returns (uint) {
    return _rate;
  }
}

