// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.13;

interface IUniswapV2 {
    function fee() external view returns (uint24);

    function amountA() external view returns (uint256);

    function amountB() external view returns (uint256);

    function feesA() external view returns (uint256);

    function feesB() external view returns (uint256);

    function constantProduct() external view returns (uint256);

    function addLiquidity(uint256 _amountA, uint256 _amountB) external;

    function swap(uint amountIn, bool tokenAForTokenB) external returns (uint256 amountOut);
}
