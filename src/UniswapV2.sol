// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.13;

contract UniswapV2 {
    uint24 public fee = 500;
    uint256 public amountA;
    uint256 public amountB;
    uint256 public feesA;
    uint256 public feesB;
    uint256 public constantProduct;

    function addLiquidity(uint256 _amountA, uint256 _amountB) external {
        amountA += _amountA;
        amountB += _amountB;
        constantProduct = amountA * amountB;
    }

    function swap(uint amountIn, bool tokenAForTokenB) external returns (uint256 amountOut) {
        feesA = (amountIn * fee) / 10000;
        amountIn -= (amountIn * fee) / 10000;
        if (tokenAForTokenB) {
            amountOut = (amountIn * amountB) / (amountA + amountIn);
            amountA += amountIn;
            amountB -= amountOut;
        } else {
            amountOut = (amountIn * amountA) / (amountB + amountIn);
            amountA -= amountOut;
            amountB += amountIn;
        }
    }
}
