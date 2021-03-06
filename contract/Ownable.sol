pragma solidity ^0.4.17;


contract Ownable {
    address public owner;
    event OwnershipTransferred(address oldOwner, address newOwner);
    
    function Ownable() public {
        owner = msg.sender;
    }
    
    modifier onlyOwner {
        require(msg.sender == owner);
        _;
    }

    function transferOwnership(address newOwner) public onlyOwner() { 
        require(newOwner != address(0));
        OwnershipTransferred(owner, newOwner);
        owner = newOwner;
    }  
}