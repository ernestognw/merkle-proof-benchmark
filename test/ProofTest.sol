// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.13;

import {MerkleProof} from "@openzeppelin/contracts/utils/cryptography/MerkleProof.sol";

contract ProofTest {
    using MerkleProof for *;

    function testVerify(bytes32[] memory proof, bytes32 root, bytes32 leaf) public pure returns (bool) {
        return proof.verify(root, leaf);
    }

    function testVerifyFixed() public pure returns (bool) {
        bytes32 root = 0xbb439f2cd52c20cd5a0d2a9fc43acc94e44c58b6b8907626f15d43e2b6fa4599;
        bytes32 leaf = 0xae5a6b19bb2927169dcf59f1e0fab3ef5a58264f24afc950c8921dd0018613e1;
        bytes32[] memory proof = new bytes32[](16);

        proof[0] = 0xae59450ef5e421fa6543f57de8ac9a2e71072669e7dfa4b939b3cb08040c3172;
        proof[1] = 0x812723c39e2874b3ee1e91b19c0ae36cec8f16968292e5cd8d63dc820e4c880e;
        proof[2] = 0x206c4b19563946e4049473bfa67040a9ae95be0afdb147074759501ad1b7cd99;
        proof[3] = 0x9e7c6c195b5e5ea9ed0bf2a03cb9807ad610ad09d8bd19f7f2ee4972829e8e98;
        proof[4] = 0x74e58acd9bfd0778bf2d85fb4bc5532078a9519e84cae147a1794d4be857a476;
        proof[5] = 0xc4a1dadd851264dc68a0143b92933885ee987ce9bd88592fb7ef283d7e4d9b38;
        proof[6] = 0x740787cebe5fdf6a4696191d58e90964022bdc07bbcb4da85fcba3a25a310cfb;
        proof[7] = 0x06ca1871c30b7a4dea60f7739a75b3b376d4277dd15827780e4474b17cb8d42f;
        proof[8] = 0x06acc609483fc476b7b6e81b185ad5380135b3166a092b489b760f05424b8bec;
        proof[9] = 0x7164e2347a3b0349f77cdcdba42de9496fb7da1f40666a7f2e862a0ced0cf687;
        proof[10] = 0xa6e400012f156c6bf518255107bc0eefb8678d8ae4bd35b820b397edd21b45f4;
        proof[11] = 0x9cd2fab756b8e5b4a4749c472d35107d520a841c4f4a5c5c7cdebf61b299f981;
        proof[12] = 0x30b7394a87d2cb2a4fb5530a0bc78bda42d55075019f5c210c43167ba8138393;
        proof[13] = 0xaf02b07c5c611f8aa1609e9962668de34a571a32d16e95bf0c90bb15cb78f019;
        proof[14] = 0xdff6a4f635ef79dec68385c4246179534dbd031e7f6ab527a25c73e46b40a7ca;
        proof[15] = 0xfd47b6c292f51911e8dfdc3e4f8bd127773b17f25b7a554beaa8741e99c41208;

        return proof.verify(root, leaf);
    }
}
