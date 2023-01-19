// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.13;

import "forge-std/Test.sol";
import "../src/ERC721BatchSend.sol";
import "../src/IERC721BatchSend.sol";
import "@openzeppelin/contracts/token/ERC721/IERC721.sol";

contract ERC721BatchSendTest is Test {
    // ERC721BatchSend public batchSend;
    address nftAddress = 0xE304d7982Bb34c253D82959acfAe75F6A3Adb9d8;
    address multisig = 0x432Eb1f2730662AD1A9791Ed34CB2DBDf7001555;

    IERC721BatchSend batchSend = IERC721BatchSend(0x380689d13a992bDeABADBf6C67AcBCcB7cce01C3);

    function setUp() public {
        // batchSend = new ERC721BatchSend();
    }

    // function testNFT() public {
    //     console.log(IERC721(nftAddress).ownerOf(1));
    //     vm.startPrank(multisig);
    //     IERC721(nftAddress).transferFrom(multisig, recipient1, 1);
    // }

    function testBatchSend() public {
        vm.startPrank(multisig);
        IERC721(nftAddress).setApprovalForAll(address(batchSend), true);
        IERC721BatchSend.NFTRecipient[] memory recipientArray = new IERC721BatchSend.NFTRecipient[](47);
        recipientArray[0] = IERC721BatchSend.NFTRecipient(0x03b6cbe4aBfFdfB218F22250a4B5aabE6081C7F1, 1);
        recipientArray[1] = IERC721BatchSend.NFTRecipient(0x04B24444b20906DE5f1fD90B1E0260583D36c86B, 2);
        recipientArray[2] = IERC721BatchSend.NFTRecipient(0x0Aff6209ecc532BAE692E0b4923C379Cb2027f07, 3);
        recipientArray[3] = IERC721BatchSend.NFTRecipient(0x18F04577a95E9E5Cb9A246a50aB73Ff55EF90ec1, 4);
        recipientArray[4] = IERC721BatchSend.NFTRecipient(0x19D5b74aED2F302e00e23A6046871A847505E96D, 5);
        recipientArray[5] = IERC721BatchSend.NFTRecipient(0x1E9B7ed825C0ACb6bCf0E2Ab53C99DC32b48BD29, 6);
        recipientArray[6] = IERC721BatchSend.NFTRecipient(0x1fD7d4C25831e6fde8C49e11fDe9FB691Fe0685f, 7);
        recipientArray[7] = IERC721BatchSend.NFTRecipient(0x38430336153468dcf36Af5cea7D6bc472425633A, 8);
        recipientArray[8] = IERC721BatchSend.NFTRecipient(0x3aA8Ac0E6C1Fb9CBb733565De16cdC5a676bCb04, 9);
        recipientArray[9] = IERC721BatchSend.NFTRecipient(0x473d3a2005499301Dc353AFa9D0C9c5980b5188c, 10);
        recipientArray[10] = IERC721BatchSend.NFTRecipient(0x5354d234E8f715208EF88dD846cBD3B221A7b822, 11);
        recipientArray[11] = IERC721BatchSend.NFTRecipient(0x55A6514978E8f72691454617Ad187065F729D07e, 12);
        recipientArray[12] = IERC721BatchSend.NFTRecipient(0x56DDCbc09713D2bA8dff06Ec008CbECf4b702Bfb, 13);
        recipientArray[13] = IERC721BatchSend.NFTRecipient(0x59D2e0a2be0DB463c36038A5fd2535F58Ab3B38F, 14);
        recipientArray[14] = IERC721BatchSend.NFTRecipient(0x6C4529e615b21B662B4103a916188C0813ECaDdE, 15);
        recipientArray[15] = IERC721BatchSend.NFTRecipient(0x7ceE8D3939A4b4A95e6820C6697a57eF6220e5Ba, 16);
        recipientArray[16] = IERC721BatchSend.NFTRecipient(0x7D658841f8Ba93299970f6e765C2CE205f1E70DD, 17);
        recipientArray[17] = IERC721BatchSend.NFTRecipient(0x7E2612F21914826972B860ad61A71e54a6EF70fb, 18);
        recipientArray[18] = IERC721BatchSend.NFTRecipient(0x85f799777A98A5728962FCaC5dE58Fb88f174A3C, 19);
        recipientArray[19] = IERC721BatchSend.NFTRecipient(0x90763Cf0cEB2D3Ea37702D69dB885e498EeE14fb, 20);
        recipientArray[20] = IERC721BatchSend.NFTRecipient(0x9bd5E00BCBdBA6A5A22038ED5523B8852a681d75, 21);
        recipientArray[21] = IERC721BatchSend.NFTRecipient(0xa49bf5886b9F447D9FC8ea8cb8f9c6cFBcA3144D, 22);
        recipientArray[22] = IERC721BatchSend.NFTRecipient(0xaCAC1cc989Fd26919f26c6fe9a7EE8B3113231B2, 23);
        recipientArray[23] = IERC721BatchSend.NFTRecipient(0xb06CC095363C55A00E255783922e74Ab50Be53B2, 24);
        recipientArray[24] = IERC721BatchSend.NFTRecipient(0xb3d8EDaf090070D2691eBbF38c408f33B7C83a26, 25);
        recipientArray[25] = IERC721BatchSend.NFTRecipient(0xC4fF8c7433c14B3F4122deae8a6A9aBE24Ab950e, 26);
        recipientArray[26] = IERC721BatchSend.NFTRecipient(0xc6C8AeCb1d9cA59A09d691cDa8539992655dbfB3, 27);
        recipientArray[27] = IERC721BatchSend.NFTRecipient(0xCe1e1e2Fa55D38495574CBf2001d27D1852109a7, 28);
        recipientArray[28] = IERC721BatchSend.NFTRecipient(0xD0192F9D034EbAE5AfA35c91d19d4AE9eb2F3e16, 29);
        recipientArray[29] = IERC721BatchSend.NFTRecipient(0xD5EE5E7b380a61d225DA4D0Be702dDe418f9cDfB, 30);
        recipientArray[30] = IERC721BatchSend.NFTRecipient(0xd8FAEC528b9fbf4fE3226d6BeB8B14A4F9BAD655, 31);
        recipientArray[31] = IERC721BatchSend.NFTRecipient(0xe0D01EFEe7A9740F8e702F086dd4FcaE87926Abf, 32);
        recipientArray[32] = IERC721BatchSend.NFTRecipient(0xe0dF5B29044f583aA415c8951655aB930e3DC852, 33);
        recipientArray[33] = IERC721BatchSend.NFTRecipient(0xE684dC05C16851c65Edb5D9fc3b11Bce4F427Eb2, 34);
        recipientArray[34] = IERC721BatchSend.NFTRecipient(0xea370c8FA5cA8D8C06b7b0440d07D7719F41bf7B, 35);
        recipientArray[35] = IERC721BatchSend.NFTRecipient(0xEA3e3612175a894362f3062785adC133D9b98f10, 36);
        recipientArray[36] = IERC721BatchSend.NFTRecipient(0xfd8Af63F6388Ac14886901D102C593158ED49dB7, 37);
        recipientArray[37] = IERC721BatchSend.NFTRecipient(0x1fD7d4C25831e6fde8C49e11fDe9FB691Fe0685f, 38);
        recipientArray[38] = IERC721BatchSend.NFTRecipient(0x55A6514978E8f72691454617Ad187065F729D07e, 39);
        recipientArray[39] = IERC721BatchSend.NFTRecipient(0x3008087707330e3b85D61B6972934121aEd8E6E1, 40);
        recipientArray[40] = IERC721BatchSend.NFTRecipient(0xd0b08671eC13B451823aD9bC5401ce908872e7c5, 41);
        recipientArray[41] = IERC721BatchSend.NFTRecipient(0x84eF86c2188DCf014B57C3aFA536c9470bbf2447, 42);
        recipientArray[42] = IERC721BatchSend.NFTRecipient(0x58e5FE22CA92106972A657F360A95190970E7201, 43);
        recipientArray[43] = IERC721BatchSend.NFTRecipient(0x531664Ee748eFebc9E4bA35B40ECBCbaC365CD84, 44);
        recipientArray[44] = IERC721BatchSend.NFTRecipient(0x152013199dd985d9983da25c85b88af57e600383, 45);
        recipientArray[45] = IERC721BatchSend.NFTRecipient(0xc915B37715C06d89284Dc4be3E1DCB1f2DF35d05, 46);
        recipientArray[46] = IERC721BatchSend.NFTRecipient(0x55A6514978E8f72691454617Ad187065F729D07e, 47);
        batchSend.batchSendNFT(nftAddress, recipientArray);
    }
}
