// SPDX-License-Identifier: MIT
pragma solidity ^0.8.18;

contract bank {
    uint public balance=0;
    string yes="Yes";
    function addBalance(uint x) public returns (uint){
        require(x>0,"need some balance");
        balance += x;
        return balance;
    }
    function withdraw(uint amount) public returns (uint){
        assert(amount!=0);
        balance -= amount;
        return balance;
    }
    function withdrawable(uint amount)public view  returns (string memory){
         if(balance<amount){
            revert("Requested amount can not be credited, request amount is greater than balance available");
        }
        return yes;
    }


}
