const StoreManager = artifacts.require('./StoreManager.sol');
const UProxy = artifacts.require('./UProxy.sol');
const Aggregated = artifacts.require('./Aggregated.sol');

module.exports = function (deployer, ...args) {
	deployer.then(async () => {
		await deployer.deploy(StoreManager);
		const marketplaceImplementation = await StoreManager.deployed();
		await deployer.deploy(UProxy, marketplaceImplementation.address);
		const proxy = await UProxy.deployed();
		const upgradeableMarketplace = await Aggregated.at(proxy.address);
		await upgradeableMarketplace.init();
	});
}
