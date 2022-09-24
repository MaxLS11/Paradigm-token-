
// SPDX-License-Identifier: ChaingeFinance
pragma solidity ^0.8.4;




import "https://github.com/FUSIONFoundation/FRC759/blob/main/FRC759.sol";
import "@openzeppelin/contracts/utils/Strings.sol";




    Contract Paradigm is FRC759 {



    use Strings for uint256;
    string public _baseURI;
    string public _name;
    string public _symbol;
    string public _totalSupply;
    string public _maxSupply;
    address public _owner;
    event OwnershipTransferred(address indexed previousOwner, address indexed newOwner);
    modifier onlyOwner {

        require(msg.sender == owner, "only owner");
        _;


}



    function transferOwnership(address newOwner) external onlyOwner {
        _validateAddress2(newOwner);
        owner = newOwner;
        emit OwnershipTransferred(owner, newOwner);
    }
}

	function _baseURI() internal pure override returns (string memory) {
		return "............";
	}


    constructor () FRC759 ("Paradigm", "GM", "11000000100000011" {



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
    


        function _mint(address account, uint256 amount) internal {
            if (_maxSupply != 0) {
            require(_totalSupply.add(amount) <= _maxSupply, "FRC759: maxSupply exceeds");
        }
            _totalSupply = _totalSupply.add(amount);
            ISlice(fullTimeToken).mint(account, amount);





    }


