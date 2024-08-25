// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

import "./ERC20.sol";

contract PBC is ERC20 {
    uint256 private _totalSupply = 10000000000 ether;

    string private _name = "Polar Bear";
    string private _symbol = "PBC";    

    constructor() ERC20(_name, _symbol) {
        _mint(msg.sender, _totalSupply);
    }
    
    function decimals() public view virtual override returns (uint8) {
        return 18;
    }

    function burn(uint256 value) public {
        _burn(msg.sender, value);
    }
}