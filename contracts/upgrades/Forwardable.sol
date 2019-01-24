pragma solidity 0.4.24;


/**
 * @title Forwardable
 * @dev Contract that's responsible for delegating calls
 * @notice used ideas and info from: https://medium.com/limechain/smart-contract-upgradeability-ee3d43dde96c
 */
contract Forwardable {
	/**
	* @dev does a delegatecall & returns what the delegatecall returned (entire context execution is returned)
	* @param _dst destination address to do the delegatecall
	*/
	function delegatedFwd(address _dst) internal {
		/* solium-disable-next-line security/no-inline-assembly */
		assembly {
			let ptr := mload(0x40)
			calldatacopy(ptr, 0, calldatasize)

			let result := delegatecall(gas, _dst, ptr, calldatasize, 0, 0)

			let size := returndatasize
			returndatacopy(ptr, 0, size)

			switch result
				case 0 {revert(ptr, size)}
				default {return (ptr, size)}
		}
	}
}
