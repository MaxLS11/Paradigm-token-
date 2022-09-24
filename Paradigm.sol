// SPDX-License-Identifier: ChaingeFinance
pragma solidity ^0.8.12;

import "https://github.com/FUSIONFoundation/FRC759/blob/main/FRC759.sol"


Contract Paradigm is FRC759 {

Constructor {
    


}



    function name() public view virtual override returns (string memory) {
        return _name;
    }

    function symbol() public view virtual override returns (string memory) {
        return _symbol;
    }
    
   }
