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
            (bool success, bytes memory returnOrRevertData) = address(nft).call(abi.encodeWithSelector(IERC721.transferFrom.selector, msg.sender, recipients[i].recipient, recipients[i].nftId));

            if (!success) {
                assembly {
                    revert(
                        // Start of revert data bytes. The 0x20 offset is always the same.
                        add(returnOrRevertData, 0x20),
                        // Length of revert data.
                        mload(returnOrRevertData)
                    )
                }
            }

            // nft.transferFrom(msg.sender, recipients[i].recipient, recipients[i].nftId);
            unchecked{++i;}
        }
    }
}
