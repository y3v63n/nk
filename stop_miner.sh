#!/bin/bash

# Base path where all miner instances live
BASE_DIR=/USERS/cloud/nockchain-miners

echo "🛑 Stopping NockChain miner on macOS..."

# Find any running nockchain process and terminate it
PIDS=$(pgrep -f "nockchain")

if [ -z "$PIDS" ]; then
    echo "⚠️ No running NockChain miner processes found."
else
    echo "Found PIDs: $PIDS"
    kill $PIDS
    echo "✅ Miner process(es) terminated."
fi

# Clean up all .sock files
echo " ^=   Removing all .sock files..."
find "$BASE_DIR" -type s -name '*.sock' -delete

echo " ^|^e All Unix socket files removed from $BASE_DIR."
