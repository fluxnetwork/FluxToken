pragma solidity ^0.5.0;


// ----------------------------------------------------------------------------
// ERC Token Standard #223 Interface
// https://github.com/ethereum/EIPs/issues/223
// ----------------------------------------------------------------------------
contract ERC223Interface {
    function transfer(address _to, uint _value, bytes _data) public returns (bool success);


    event Transfer(address indexed _from, address indexed _to, uint _value, bytes _data);
}
