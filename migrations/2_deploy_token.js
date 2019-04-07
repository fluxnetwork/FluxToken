var FluxToken = artifacts.require("./token/FluxToken.sol");

module.exports = function (deployer) {
  deployer.deploy(FluxToken); 
};
