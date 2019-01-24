pragma solidity 0.4.24;


/**
 * @title SharedStorage
 * @dev base contract holding address of the contract implementation
 * @notice ideas and concepts derived from https://medium.com/limechain/smart-contract-upgradeability-ee3d43dde96c
 */
contract SharedStorage {
	address public contractImplementation;
}
