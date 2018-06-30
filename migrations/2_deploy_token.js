var FluxToken = artifacts.require("./token/FluxToken.sol");

module.exports = function (deployer) {
  deployer.deploy(FluxToken,  5000000000000000000000000000); //and 5 Billion * 10^18 preallocated tokens
};
