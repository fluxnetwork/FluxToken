var FluxToken = artifacts.require("./token/FluxToken.sol");

module.exports = function (deployer) {
  deployer.deploy(FluxToken,'0xD4EbfCB2177DF3220189c6f42c3702743EF5d160', 5000000000000000000000000000); //and 5 Billion * 10^18 preallocated tokens
};
