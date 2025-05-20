#!/bin/bash

NUM_MINERS=14
NCK_BINARY=/USERS/cloud/nockchain/target/release/nockchain
BASE_DIR=/USERS/cloud/nockchain-miners
LOG_DIR=/USERS/cloud/nockchain_logs

mkdir -p "$BASE_DIR"
mkdir -p "$LOG_DIR"

for i in $(seq 0 $((NUM_MINERS - 1))); do
    MINER_DIR="$BASE_DIR/miner_$i"
    mkdir -p "$MINER_DIR"

    # Use symlink to binary for easy updates
    ln -sf "$(realpath $NCK_BINARY)" "$MINER_DIR/nockchain"

    echo "Launching miner $i"

    "$MINER_DIR/nockchain" --mine \
        --mining-pubkey 2wKyknRVrBw1jvPFMib4pk5ENBjopFGyGeSXcSp6QBZz38YCtaxETNGuN8ijAmomsjUD1hpWPyu9TeC1GkcojoszCnWntu3mSxjni5r9M2QYft7Jf9QTk4W8q1nVarkB9JjB \
        --btc-node-url https://bitcoin-mainnet.core.chainstack.com/69bfa311c13f64698a539bb0f48153eb > "$LOG_DIR/miner_$i.log" 2>&1 &
done

echo "✅ Launched $NUM_MINERS miners on macOS."
