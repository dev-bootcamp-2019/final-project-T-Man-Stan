pragma solidity 0.4.24;

import "../../../contracts/upgrades/Own_Up_Imp.sol";


contract Implementation is Own_Up_Imp {

    uint public rate;

    function setRate(uint r) public {
        rate = r;
    }

    function getNum() public pure returns (uint) {
        return 1000;
    }
}
