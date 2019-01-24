pragma solidity 0.4.24;

import './SharedStorage.sol';
import '../owners/UnInitOwn.sol';


/**
 * @title Own_Up_Imp
 * @dev Assembling contract of the ownable upgradeable funcionality.
 * @notice Inspired by https://medium.com/limechain/smart-contract-upgradeability-ee3d43dde96c
 */
contract Own_Up_Imp is SharedStorage, UnInitOwn {
	
	event LogUpgrContract(address indexed newImplementation);

	/**
	 * @dev Allows current owner to upgrade the implementation
	 * to which the `Forwardable` contract delegates calls.
	 * @param _newImplementation  address of the new implementation.
	 */
	function upgradeImplementation(address _newImplementation) public onlyOwner {
		require(_newImplementation != address(0), '_newImplementation can not be 0');
		emit LogUpgrContract(_newImplementation);
		contractImplementation = _newImplementation;
	}
}
