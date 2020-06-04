/*
 * Opyn's Black Scholes library. Copyright © 2020 by Opyn.co .
 * Author: Aparna Krishnan <aparna@opyn.co>
 */
pragma solidity 0.6.0;

contract BlackScholes {
    /**
     * @notice This function returns the d1 value in the black scholes equation
     * @param T is the time to expiry
     * @param S is the current spot price of the asset
     * @param K is the current strike price of the asset
     *
     */

    function d1(
        int128 T,
        int128 S,
        int128 K
    ) internal returns (uint256) {
        return 0;
    }

    function d2() internal returns (uint256) {
        return 0;
    }

    function blackScholes() external returns (uint256) {
        return 0;
    }
}
