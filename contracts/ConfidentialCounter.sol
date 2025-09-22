// SPDX-License-Identifier: MIT
pragma solidity ^0.8.19;


contract ConfidentialCounter {
// Store latest ciphertext per user
mapping(address => bytes) public latestCipher;


event CipherStored(address indexed user, bytes cipher);


// Store a ciphertext (the result of FHE evaluation)
function setCipher(bytes calldata cipher) external {
latestCipher[msg.sender] = cipher;
emit CipherStored(msg.sender, cipher);
}


// Read the stored ciphertext for a user
function getCipher(address user) external view returns (bytes memory) {
return latestCipher[user];
}
}
