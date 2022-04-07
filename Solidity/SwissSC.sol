pragma solidity ^0.8.0;

import "@openzeppelin/contracts/token/ERC20/ERC20.sol";

contract SwissSC is ERC20 
{
        
    constructor() ERC20(" Stable Swiss Coin", "CHFsn") {
        
    } 

    function mint(address to, uint256 amount)
        external
        returns (bool)
    {
        _mint(to, amount);
        return true;
    } 
    
    function burn(uint256 amount) external returns (bool) {
        _burn(_msgSender(), amount);
        return true;
    }

}    
