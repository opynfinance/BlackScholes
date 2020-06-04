/*
 * Safe Float Math contract. Copyright © 2020 by Opyn.co .
 * Author: Opyn + Code Modified from Open Zeppelin
 */
pragma solidity 0.6.0;

import {SignedSafeMath} from "@openzeppelin/contracts/math/SignedSafeMath.sol";

/**
 * @title SafeSignedFloatMath
 * @dev Signed math operations with safety checks that revert on error.
 */

library SafeSignedFloatMath {
    using SignedSafeMath for int256;

    // Assumes 18 digitis precision of decimals.
    int256 constant decimals = 1e18;

    /**
     * @dev Multiplies two signed fixed points and maintains precision.
     * rounds down or up based on last digit.
     * reverts on overflow.
     * Eg. 0.4 * 0.4 = 0.16,
     * Input: a = 4 * 1e18, b = 4 * 1e18
     * Output: 16 * 1e18
     *
     */
    function mul(int256 a, int256 b) internal pure returns (int256) {
        int256 c = a.mul(b);
        return c.add(decimals.div(2)).div(decimals);
    }

    /**
     * @dev Integer division of two signed integers truncating the quotient, reverts on division by zero.
     */
    function div(int256 a, int256 b) internal pure returns (int256) {
        require(b != 0, "SignedSafeMath: division by zero");
        // require(
        //     !(b == -1 && a == _INT256_MIN),
        //     "SignedSafeMath: division overflow"
        // );

        int256 c = a / b;

        return c;
    }

    /**
     * @dev Subtracts two signed integers, reverts on overflow.
     */
    function sub(int256 a, int256 b) internal pure returns (int256) {
        int256 c = a - b;
        require(
            (b >= 0 && c <= a) || (b < 0 && c > a),
            "SignedSafeMath: subtraction overflow"
        );

        return c;
    }

    /**
     * @dev Adds two signed integers, reverts on overflow.
     */
    function add(int256 a, int256 b) internal pure returns (int256) {
        int256 c = a + b;
        require(
            (b >= 0 && c >= a) || (b < 0 && c < a),
            "SignedSafeMath: addition overflow"
        );

        return c;
    }

    /**
     * @dev Returns the remainder of dividing two signed integers.
     * Reverts when dividing by zero.
     *
     * Counterpart to Solidity's `%` operator. This function uses a `revert`
     * opcode (which leaves remaining gas untouched) while Solidity uses an
     * invalid opcode to revert (consuming all remaining gas).
     *
     * Requirements:
     * - The divisor cannot be zero.
     */
    function mod(int256 a, int256 b) internal pure returns (int256) {
        return mod(a, b, "SafeMath: modulo by zero");
    }

    /**
     * @dev Returns the remainder of dividing two signed integers.
     * Reverts with custom message when dividing by zero.
     *
     * Counterpart to Solidity's `%` operator. This function uses a `revert`
     * opcode (which leaves remaining gas untouched) while Solidity uses an
     * invalid opcode to revert (consuming all remaining gas).
     *
     * Requirements:
     * - The divisor cannot be zero.
     */
    function mod(
        int256 a,
        int256 b,
        string memory errorMessage
    ) internal pure returns (int256) {
        require(b != 0, errorMessage);
        // TODO: verify if solidity mod is correct.
        return a % b;
    }
}
