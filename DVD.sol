// SPDX-License-Identifier: MIT
pragma solidity ^0.8.17;

contract DVD {

    // uint public num = 0;
    uint y=2;

    function divide(uint _num, uint _deno) public pure returns (uint){
        if(_num<_deno){

            revert("please provide numbers which in which numerator greater than denomenator");
            
        }
        return _num/_deno;

    }

    function testAssert(uint num) public pure{
        assert(num!=0);
    }

    function mult(uint x) public view returns (uint){
        require(x>0,"Value of x is zero , we don't want the result to be zero");
        return x*y;

    }

}
