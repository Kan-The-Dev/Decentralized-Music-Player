// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import "@openzeppelin/contracts/token/ERC721/extensions/ERC721URIStorage.sol";
import "@openzeppelin/contracts/access/Ownable.sol";

contract DecentralizedMusicNFT is ERC721URIStorage, Ownable {
    uint256 public nextTokenId;
    mapping(uint256 => address) public songCreators;

    event SongMinted(uint256 tokenId, string title, string ipfsHash, address artist);
    event SongTipped(uint256 tokenId, uint256 amount, address tipper);

    constructor() ERC721("DecentralizedMusicNFT", "DMNFT") {}

    function mintSong(string memory _title, string memory _ipfsHash) public {
        uint256 tokenId = nextTokenId;
        _mint(msg.sender, tokenId);
        _setTokenURI(tokenId, _ipfsHash);
        songCreators[tokenId] = msg.sender;
        nextTokenId++;

        emit SongMinted(tokenId, _title, _ipfsHash, msg.sender);
    }

    function tipArtist(uint256 _tokenId) public payable {
        require(_exists(_tokenId), "NFT does not exist");
        require(msg.value > 0, "Tip must be greater than zero");

        address artist = songCreators[_tokenId];
        payable(artist).transfer(msg.value);

        emit SongTipped(_tokenId, msg.value, msg.sender);
    }
}
