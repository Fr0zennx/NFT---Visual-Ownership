/// NFT & Visual Ownership Module
/// This module handles NFT creation and management on the Sui blockchain
module nft_visual_ownership::nft {
    use std::string::{Self, utf8, String};
    use sui::object::{Self, UID};
    use sui::tx_context::{Self, TxContext};
    use sui::transfer;
    use sui::display;
    use sui::package;

    /* CHAPTER 1: STRUCT DEFINITION */
    // Goal: Define the "EntryTicket" object with name, description, and url fields.
    public struct EntryTicket has key, store {
        id: UID,
        /* TODO: Add name, description, and url fields here */
    }

    /* CHAPTER 2: ONE-TIME WITNESS (OTW) */
    // Goal: Define a special struct for the Display system.
    // Hint: It must be uppercase and have the 'drop' ability.
    public struct /* TODO: OTW_NAME */ has drop {}

    /* CHAPTER 3: INITIALIZATION & DISPLAY */
    // Goal: Setup how the NFT looks in wallets.
    fun init(otw: /* TODO: OTW_NAME */, ctx: &mut TxContext) {
        let keys = vector[
            utf8(b"name"),
            utf8(b"image_url"),
            utf8(b"description"),
        ];

        let values = vector[
            /* TODO: Add template strings like "{name}", "{url}", "{description}" */
        ];

        // 1. Claim the Publisher
        let publisher = /* TODO: Use package::claim */;

        // 2. Create the Display
        let mut display = /* TODO: Use display::new_with_fields */;

        // 3. Update Display version
        /* TODO: Use display::update_version */

        // 4. Transfer Publisher and Display to the sender
        /* TODO: Transfer logic */
    }

    /* CHAPTER 4: MINTING FUNCTION */
    // Goal: Create a function that users can call to mint their visual NFT.
    public entry fun mint_ticket(
        name: vector<u8>,
        description: vector<u8>,
        url: vector<u8>,
        ctx: &mut TxContext
    ) {
        // 1. Create the EntryTicket object
        let ticket = EntryTicket {
            /* TODO: Initialize fields */
        };

        // 2. Send the ticket to the transaction sender
        /* TODO: Final transfer */
    }
}
