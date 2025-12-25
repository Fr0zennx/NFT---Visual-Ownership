# NFT & Visual Ownership - Sui Speedrun

An interactive project designed to learn NFT development on the Sui blockchain.

## Project Structure

```
NFT & Visual Ownership/
├── Move.toml                 # Project configuration
├── sources/
│   ├── nft.move             # NFT contract (main module)
│   └── marketplace.move     # Marketplace contract
├── tests/
│   └── nft_tests.move       # Test module
└── README.md                 # This file
```

## Modules

### 1. **nft.move** - NFT Module
Contains functions for creating, managing, and transferring NFTs.

**Main Components:**
- `EntryTicket` struct: The basic structure of an NFT
- One-Time Witness (OTW): Special struct for the Display system
- Initialization function: Setup wallet display
- Minting function: Create NFTs

**TODO Tasks:**
- [ ] Complete the struct fields (name, description, url)
- [ ] Define the OTW struct name
- [ ] Implement the init function (Publisher, Display, Transfer)
- [ ] Implement the mint_ticket function

### 2. **marketplace.move** - Marketplace Module
Enables buying and selling of NFTs.

**Main Components:**
- `Listing` struct: NFTs for sale
- `MarketplaceTreasury` struct: Platform treasury
- Listing and purchasing functions

**TODO Tasks:**
- [ ] Implement NFT listing function
- [ ] Implement purchase function
- [ ] Add listing cancellation function
- [ ] Add treasury management functions

## Getting Started

1. **Install Sui CLI:**
   ```bash
   curl -fsSL https://sui-releases.s3.us-east-1.amazonaws.com/latest/sui-ubuntu-latest
   ```

2. **Connect to Devnet:**
   ```bash
   sui client switch --env devnet
   ```

## Development Steps

1. Complete the empty functions
2. Write tests to verify functionality
3. Check compilation with `sui move build`
4. Run tests with `sui move test`

## Resources

- [Sui Developer Docs](https://docs.sui.io/)
- [Move Language Guide](https://move-language.github.io/)
- [Sui SDK](https://github.com/MystenLabs/sui/tree/main/sdk)

---

**Note:** This project is for educational purposes. Additional security audits are recommended for production use.
