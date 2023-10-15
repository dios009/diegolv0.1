// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

import "@openzeppelin/contracts/token/ERC20/ERC20.sol";
import "@openzeppelin/contracts/access/Ownable.sol";
import "@openzeppelin/contracts/token/ERC20/extensions/ERC20Permit.sol";

contract Diegol is ERC20, Ownable, ERC20Permit {
    constructor(address initialOwner)
        ERC20("Diegol", "DIEG")
        Ownable(initialOwner)
        ERC20Permit("Diegol")
    {
        _mint(msg.sender, 200 * 10 ** decimals());
    }

    function mint(address to, uint256 amount) public onlyOwner {
        _mint(to, amount);
    }
}
