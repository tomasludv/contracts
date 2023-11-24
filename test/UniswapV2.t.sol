// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.13;

import {Test, console2} from "forge-std/Test.sol";
import {IUniswapV2} from "../src/IUniswapV2.sol";

contract UniswapV2Test is Test {
    IUniswapV2 public uniswapv2;

    function setUp() public {
        uniswapv2 = IUniswapV2(0x6ea7c26EC841C3936945dB349759df745f55ee60);
    }

    function testAdd() public view {
        //uniswapv2.addLiquidity(20620 * 1e18, 10 * 1e18);
        //uniswapv2.swap(10 * 1e18, true);
        //uniswapv2.swap(1 * 1e18, false);
        console2.log("Constant Product", uniswapv2.constantProduct());
        console2.log("Amount A", uniswapv2.amountA());
        console2.log("Amount B", uniswapv2.amountB());
        console2.log("Fees A", uniswapv2.feesA());
        console2.log("Fees B", uniswapv2.feesB());
    }
}
