pragma solidity 0.4.24;

import './Store.sol';


/**
 * @title DestroyStore
 * @dev Contract that can be destroyed either
 * by the owner or the marketplace.
 * All funds in contract will be sent to the owner,
 * except the fee collected by the marketplace.
 */
contract DestroyStore is Store {

	constructor(address _owner) public Store(_owner) {}

	/**
	* @dev Transfers the current marketplace balance to the marketplace
	* and all other funds to the owner.
	* @notice Using send to prevent DoS by revert from the marketplace address.
	*/
	function destroy() public onlyOwnerOrMarketplace {
		/* solium-disable-next-line security/no-send */
		marketplace.transfer(marketplaceBalance);
		selfdestruct(owner);
	}
}
