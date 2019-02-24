pragma solidity 0.5.4;

import "openzeppelin-solidity/contracts/token/ERC20/ERC20.sol";
import "openzeppelin-solidity/contracts/token/ERC20/ERC20Detailed.sol";


/// @title  FluxToken
contract FluxToken is ERC20, ERC20Detailed {
  uint private INITIAL_SUPPLY = 1000000000e18;

  constructor () public
    ERC20Detailed("FluxToken", "FLX", 18)
  {
    _mint(msg.sender, INITIAL_SUPPLY);
  }

}
