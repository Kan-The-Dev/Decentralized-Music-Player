# Decentralized Music NFT Player

## Overview
This project is a decentralized music platform where artists can mint their music as **free NFTs**, allowing users to collect and listen to songs directly from their **Web3 wallets** (e.g., MetaMask). Additionally, users can **tip artists** in cryptocurrency as a form of appreciation.

## Features
✅ **Mint Music NFTs** – Artists can upload songs and store them as **ERC-721 NFTs** with an **IPFS link**.
✅ **Free Music Collection** – Listeners can claim these music NFTs and store them in their Web3 wallets.
✅ **Web3 Wallet Playback** – Users can play their music directly from their wallet (if supported).
✅ **Crypto Tipping System** – Listeners can send **ETH/BSC** tips to artists for their music.

## Tech Stack
- **Solidity** – Smart contract language for Ethereum/BNB Chain.
- **ERC-721** – NFT standard for unique music ownership.
- **IPFS** – Decentralized storage for audio files.
- **MetaMask & Web3 Wallets** – NFT playback & transaction management.
- **OpenZeppelin Contracts** – Secure ERC-721 NFT implementation.

## Smart Contract Overview
The smart contract includes:
1. **Minting Function** – Artists can upload songs as NFTs with IPFS links.
2. **Tipping Function** – Users can send ETH/BSC to artists for their music.
3. **Ownership & Metadata** – Every song NFT is linked to the original creator.

## Deployment Steps
1. **Set up a Solidity environment** (Remix, Hardhat, or Truffle).
2. **Deploy the contract** on Ethereum or Binance Smart Chain.
3. **Upload music files** to IPFS and mint NFTs with the IPFS link.
4. **Use MetaMask** to collect & play NFTs.

## How to Use
1. **Artists**: Upload your music to **IPFS** and mint an NFT.
2. **Listeners**: Claim the NFT and play music from your Web3 wallet.
3. **Support Artists**: Tip them using the **tipArtist** function.

## Future Enhancements
🔹 **NFT Marketplace Integration** – Enable song trading & resale.
🔹 **Royalty System** – Automatic revenue share on secondary sales.
🔹 **Wallet-Based Music Player** – Custom Web3 music player integration.

## License
This project is licensed under the **MIT License**.
