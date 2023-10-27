// SPDX-License-Identifier: MIT
pragma solidity ^0.8.9;

contract Funder {
    uint public noOfFunders;
    mapping(uint => address) private funders;

    function transfer() external payable {
        funders[noOfFunders] = msg.sender;
    }

    function withdraw(uint _amount) external {
        require(_amount <= 2000000000000000000, "Withdraw more than two ether");
        payable(msg.sender).transfer(_amount);
    }

    receive() external payable {}
}
