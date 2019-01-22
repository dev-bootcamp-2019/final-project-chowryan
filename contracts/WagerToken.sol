pragma solidity ^0.4.25;

import "./token/StandardToken.sol";

/**
 * @title WagerToken
 * @dev Very simple ERC20 Token example, where all tokens are pre-assigned to the creator.
 * Note they can later distribute these tokens as they wish using `transfer` and other
 * `StandardToken` functions.
 */
contract WagerToken is StandardToken {

    string public constant name = "WagerToken"; // solium-disable-line uppercase
    string public constant symbol = "WGR"; // solium-disable-line uppercase
    uint8 public constant decimals = 0; // solium-disable-line uppercase

    uint256 public constant INITIAL_SUPPLY = 100;

    /**
    * @dev Constructor that gives msg.sender all of existing tokens.
    */
    constructor() public {
        totalSupply_ = INITIAL_SUPPLY;
        balances[msg.sender] = INITIAL_SUPPLY;
        emit Transfer(0x0, msg.sender, INITIAL_SUPPLY);
    }
}
