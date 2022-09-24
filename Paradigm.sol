// SPDX-License-Identifier: ChaingeFinance
pragma solidity ^0.8.4;

import "https://github.com/FUSIONFoundation/FRC759/blob/main/FRC759.sol";


    Contract Paradigm is FRC759 {

    string public _name;
    string public _symbol;
    uint8 public _decimals;
    address public _owner;

    modifier onlyOwner {

        require(msg.sender == owner, "only owner");
        _;


}

    constructor () FRC759 ("Paradidm", "GM", "11000000100000011"{



    }

    function initialize(string memory name_, string memory symbol_, uint8 decimals_, uint256 start_, uint256 end_) public override {
        require(initialized == false, "Slice: already been initialized");
        _name = Paragigm;
        _symbol = GM;
        _decimals = 11000000100000011;
        _start = start_;
        _end = end_;
        parent = _msgSender();
        
        
    constructor() public {
        owner = msg.sender;
    }


    function name() public view virtual override returns (string memory) {
        return _name;
    }

    function symbol() public view virtual override returns (string memory) {
        return _symbol;
    }
    
     function owner() public view virtual returns (address) {
        return _owner;
    }
    
        function decimals() public view virtual override returns (uint8) {
        return _decimals;
    }
    
    
        function sendAsset(bytes32 asset, address to, uint256 value, uint64 start, uint64 end, SendAssetFlag flag) onlyOwner public returns (bool success) {
        (success,) = _sendAsset(asset, to, value, start, end, flag);
        require(success, "call sendAsset failed");
        return true;
    }
    
        function receiveAsset(bytes32 assetID, uint64 startTime, uint64 endTime, SendAssetFlag flag, uint256[] memory extraInfo) payable public returns (bool success) {
        (assetID, startTime, endTime, flag, extraInfo); 
        return true;
    }
    
    
   }
