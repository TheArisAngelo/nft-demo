// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.20;

import "@openzeppelin/contracts/token/ERC721/ERC721.sol";
import "@openzeppelin/contracts/token/ERC721/extensions/ERC721URIStorage.sol";
import "@openzeppelin/contracts/access/Ownable.sol";

contract nft is ERC721URIStorage {
    uint256 tokenId;

    constructor() ERC721("Japanese Ninja", "JN"){}

    function mint() external {
        _safeMint(msg.sender, tokenId);
        _setTokenURI(
            tokenId,
            "ipfs://bafkreih3siutdqxbfhbeaxm5dqiiotof6l7xzztfp63gmi3utf73tc27ii"
        );
    }
}