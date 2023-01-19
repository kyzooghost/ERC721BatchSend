// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.13;

import "@openzeppelin/contracts/token/ERC721/IERC721.sol";

contract ERC721BatchSend {

    struct NFTRecipient {
        address recipient;
        uint256 nftId;
    }

    function batchSendNFT(address nftAddress, NFTRecipient[] calldata recipients) external {
        IERC721 nft = IERC721(nftAddress);
        uint256 length = recipients.length;
        for (uint256 i; i < length;) {
            nft.transferFrom(msg.sender, recipients[i].recipient, recipients[i].nftId);
            unchecked{++i;}
        }
    }
}
