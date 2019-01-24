pragma solidity 0.4.24;

import '../store_functions/DestroyStore.sol';


/**
 * @title StoreFactory
 * @dev Library used to create new store instances.
 */
library StoreFactory {
	/**
	* @dev Creates new store instance.
	* @param _storeOwner The owner of the new store instance.
	* @return Address of the new store.
	*/
	function createStore(address _storeOwner) internal returns (address) {
		DestroyStore store = new DestroyStore(_storeOwner);
		return store;
	}
}
