// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.13;

interface IERC721BatchSend {

    struct NFTRecipient {
        address recipient;
        uint256 nftId;
    }

    function batchSendNFT(address nftAddress, NFTRecipient[] calldata recipients) external;
}
