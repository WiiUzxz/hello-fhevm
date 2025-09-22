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

