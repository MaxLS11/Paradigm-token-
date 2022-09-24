
// SPDX-License-Identifier: ChaingeFinance
pragma solidity ^0.8.4;

import "https://github.com/FUSIONFoundation/FRC759/blob/main/FRC759.sol";
import "import "@openzeppelin/contracts/utils/Strings.sol";

    Contract Paradigm is FRC759 {
    use Strings for uint256;
    string public _baseURI;
    string public _name;
    string public _symbol;
    string public _totalSupply;
    address public _owner;

    modifier onlyOwner {

        require(msg.sender == owner, "only owner");
        _;


}


	function _baseURI() internal pure override returns (string memory) {
		return "............";
	}


    constructor () FRC759 ("Paradigm", "GM", "11000000100000011" {



    }

    function initialize(string memory _name, string memory _symbol_, uint256 _start, uint256 _end) public override {
        require(initialized == false, "Slice: already been initialized");
        _name = Paragigm;
        _symbol = GM;
        _totalSupply = 11000000100000011;
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
    
        function totalSupply() public view virtual override returns (uint256) {
            return _totalSupply;
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
    

        function _msgSender() internal view virtual returns (address) {
            return msg.sender;
    }
    


        function approveByParent(address owner, address spender, uint256 amount) external returns (bool);
   }
