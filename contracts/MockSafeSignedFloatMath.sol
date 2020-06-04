/*
 * CDF contract. Copyright © 2020 by Opyn.co .
 * Author: Aparna Krishnan <aparna@opyn.co>
 */
pragma solidity 0.5.16;

import "./SafeSignedFloatMath.sol";

contract MockSafeSignedFloatMath {
    using SafeSignedFloatMath for int256;

    /**
     * @dev Multiplies two signed integers, reverts on overflow.
     */
    function mul(int256 a, int256 b) external pure returns (int256) {
        return a.mul(b);
    }

    /**
     * @dev Integer division of two signed integers truncating the quotient, reverts on division by zero.
     */
    function div(int256 a, int256 b) external pure returns (int256) {
        return a.div(b);
    }

    /**
     * @dev Subtracts two signed integers, reverts on overflow.
     */
    function sub(int256 a, int256 b) external pure returns (int256) {
        return a.sub(b);
    }

    /**
     * @dev Adds two signed integers, reverts on overflow.
     */
    function add(int256 a, int256 b) external pure returns (int256) {
        return a.add(b);
    }

    /**
     * @dev Returns the remainder of dividing two signed integers.
     */
    function mod(int256 a, int256 b) external pure returns (int256) {
        return a.mod(b);
    }
}
