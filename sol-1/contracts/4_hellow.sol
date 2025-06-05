// SPDX-License-Identifier: GPL-3.0

pragma solidity >=0.8.2 <0.9.0;

contract Hello {

string public helloStr = "hello world";
uint [] public nums = [10,20,30];

function getHello() public view returns (string memory) {
    return  helloStr;
}

function pushNewElement(uint newElement) public returns (uint) {
    nums.push(newElement);
}

function popLastELement() public returns (uint x) {
    nums.pop();
}

function setHello(string memory newHello) public {
    helloStr = newHello;
}


}