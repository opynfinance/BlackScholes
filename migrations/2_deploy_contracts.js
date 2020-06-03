const BlackSchoels = artifacts.require('BlackScholes.sol');
const NormalCDF = artifacts.require('NormalCDF.sol');
const MockMath = artifacts.require('MockSafeSignedFloatMath.sol');
const SafeSignedFloatMath = artifacts.require('SafeSignedFloatMath.sol')

module.exports = function (deployer) => {
    deployer.then( async () => {
        await deployer.deploy(SafeSignedFloatMath);
        await deployer.link(SafeSignedFloatMath, MockMath);

        await deployer.deploy(MockMath);
    })
}; 