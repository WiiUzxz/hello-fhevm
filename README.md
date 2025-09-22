# hello-fhevm — Confidential Counter (Starter)


A beginner-friendly starter repo for the Zama Bounty Season 10: **Hello FHEVM** tutorial.


This repo demonstrates a minimal full-stack dApp that shows the FHE flow: key generation → encrypt → evaluate → decrypt.


> NOTE: FHE SDK APIs change frequently. Wherever a concrete library call is required you'll find `// CHECK` notes. Replace with the correct function names from the Zama docs or `fhevmjs` / `zama-sdk` you choose to use.


## Quick start


Prerequisites: Node 18+, npm or pnpm, MetaMask (for optional on-chain storage).


```bash
# clone the repo (after you create it locally)
# install root deps (hardhat tooling)
npm install


# install frontend deps
cd frontend && npm install


# compile contracts
cd ..
npx hardhat compile


# run the local FHE smoke test
node scripts/run_local_eval.js


# run the frontend
cd frontend && npm run dev




---


## File: `tutorial.md`


```md
# Tutorial: Hello FHEVM — Confidential Counter


## Learning goals
- Understand the basics of FHEVM
- Build a minimal dApp that encrypts a number, performs `+1` under FHE, and decrypts the result
- Run the example locally and optionally deploy to Zama testnet


## Overview
Follow the README quick start. This tutorial describes the key steps and explains `// CHECK` spots you must adapt to the current Zama/FHE SDK.


### 1. Key generation
Explain how to generate keys in-browser and provide demo keys for quick testing.


### 2. Encrypt/Serialize
Show numeric encoding (JSON or binary), base64 encoding for Solidity `bytes`.


### 3. Local evaluation (dev)
Use `scripts/run_local_eval.js` to explain the evaluate API and run a smoke test.


### 4. On-chain storage (optional)
If you want to record results on-chain, call the contract `setCipher(bytes)` with the base64-decoded bytes.


### 5. Decrypt
Show decrypting in-browser and verifying the result.


### Appendix: Troubleshooting
- Encoding mismatches
- Large ciphertext gas costs
- Browser memory/timeouts
