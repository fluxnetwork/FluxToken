pragma solidity ^0.4.24;

import "./StandardToken.sol";
import "./SafeMath.sol";
import "./Ownable.sol";


/// @title  FluxToken
contract FluxToken is Ownable, StandardToken {
  using SafeMath for uint;

  /*
  *  Token metadata
  */
  string constant public name = "Flux Token";
  string constant public symbol = "FLX";
  uint8 constant public decimals = 18;
  uint constant multiplier = 10 ** uint(decimals);


  /*
  * Events
  */
  event Burnt(address indexed _burner, uint indexed _num, uint indexed _total_supply);


  /*
  * Public Functions
  */
  /// @dev Contract constructor function
  /// @param _owner Address of owners wallet.
  /// @param _supply Number of initially provided token
  constructor(address _owner, uint _supply) public {

    require(_owner != 0x0);
    totalSupply = _supply;
    balances[_owner] = _supply;
    emit Transfer(0x0, _owner, balances[_owner]);

  }


  /// @notice Allows `msg.sender` to simply destroy `num` token units. This means the total
  /// token supply will decrease.
  /// @dev Allows to destroy token units.
  /// @param _num Number of token units to burn.
  function burn(uint _num) public {
    require(_num > 0);
    require(balances[msg.sender] >= _num);

    balances[msg.sender] = balances[msg.sender].sub(_num);
    totalSupply = totalSupply.sub(_num);
    emit Burnt(msg.sender, _num, totalSupply);
    emit Transfer(msg.sender, 0x0, _num);
  }
}
