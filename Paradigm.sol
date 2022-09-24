// SPDX-License-Identifier: ChaingeFinance
pragma solidity ^0.8.12;

import "https://github.com/FUSIONFoundation/FRC759/blob/main/FRC759.sol"


Contract Paradigm is FRC759 {

    address owner;
    modifier onlyOwner {
        require(msg.sender == owner, "only owner");
        _;


}

    constructor() public {
        owner = msg.sender;
    }


    function name() public view virtual override returns (string memory) {
        return _name;
    }

    function symbol() public view virtual override returns (string memory) {
        return _symbol;
    }
    
        function sendAsset(bytes32 asset, address to, uint256 value, uint64 start, uint64 end, SendAssetFlag flag) onlyOwner public returns (bool success) {
        (success,) = _sendAsset(asset, to, value, start, end, flag);
        require(success, "call sendAsset failed");
        return true;
    }
    
    
        function receiveAsset(bytes32 assetID, uint64 startTime, uint64 endTime, SendAssetFlag flag, uint256[] memory extraInfo) payable public returns (bool success) {
        (assetID, startTime, endTime, flag, extraInfo); // silence warning of Unused function parameter
        return true;
    }
    
    
   }
