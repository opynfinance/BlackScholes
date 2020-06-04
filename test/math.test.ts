import {expect} from 'chai';
import {MockSafeSignedFloatMathInstance} from '../build/types/truffle-types';

const MockMath = artifacts.require('MockSafeSignedFloatMath.sol');

const truffleAssert = require('truffle-assertions');

const {
  BN,
  time,
  expectEvent,
  expectRevert,
  balance
} = require('@openzeppelin/test-helpers');

contract('OptionsContract', accounts => {
  const creatorAddress = accounts[0];

  let math: MockSafeSignedFloatMathInstance;

  before('set up contracts', async () => {
    math = await MockMath.deployed();
  });

  describe('Test Mod', () => {
    console.log('heere');
    it('Test negative mod', async () => {
      const modResult = await math.mod('5', '-2');
      console.log(modResult.toString());
    });
  });
});
