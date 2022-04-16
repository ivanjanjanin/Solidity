pragma solidity ^0.4.15;

contract GuardFunctions{
 
    function throws(){
        throw;              //EXAMPLE : if(msg.sender != owner) { throw; }
    }  
    function reverts(){
        revert();           //EXAMPLE : if(msg.sender != owner) { revert(); }
    }
    function requires(){
        require(false);     //EXAMPLE : require(msg.sender == owner);
    }
    function asserts(){
        assert(false);      //EXAMPLE : assert(msg.sender == owner);
    }
}

