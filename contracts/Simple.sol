// SPDX-License-Identifier: MIT
pragma solidity ^0.8.9;

contract Simple {
    string public name;
    string public greetingprefix = "Hello";

    constructor(string memory initialization) {
        name = initialization;
    }

    function stName(string memory newName) public {
        name = newName;
    }

    function getGreeting() public view returns (string memory) {
        //return greetingprefix+name;; not possible in solidity
        return string(abi.encodePacked(greetingprefix, name));
    }

    receive() external payable {}
}
