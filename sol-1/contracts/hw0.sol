// SPDX-License-Identifier: MIT
pragma solidity ^0.8.2;

contract ECC {
    function add (uint x1, uint y1, uint x2, uint y2) public view returns (uint, uint)  {

        // send a call to contract address 6
        bytes memory payload = abi.encode(x1, y1, x2, y2);

        (bool ok, bytes memory data) = address(6).staticcall(payload);

        return abi.decode(data, (uint, uint));
    }
}