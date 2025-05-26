#!/bin/bash

#cd nockchain
RUST_LOG=info,nockchain::mining=debug,nockchain::kernel_pool=info \
./target/release/nockchain \
  --mine \
  --mining-pubkey 3u71QFPLDS8WBzkk2vSCEQW72LBTdE4rxmqf1hKMfini9iUPHYb9kuakkcMDsToZUsHP7SXBkQTwFRLgWZDHoFDVRBRS9vDjVZ23qujtQ14m2DeRnL3tJj364wy5tNPSZJ9f \
  --btc-node-url https://bitcoin-mainnet.core.chainstack.com/69bfa311c13f64698a539bb0f48153eb \
  --peer "/ip4/95.216.102.60/udp/3006/quic-v1" \
  --peer "/ip4/34.176.41.23/udp/30000/quic-v1" \
  --peer "/ip4/34.16.237.144/udp/30000/quic-v1" \
  --peer "/ip4/34.85.34.153/udp/30000/quic-v1" \
  --peer "/ip4/34.95.155.151/udp/30000/quic-v1" \
  --peer "/ip4/34.97.242.48/udp/30000/quic-v1" \
  --peer "/ip4/34.162.206.28/udp/30000/quic-v1" \
  --peer "/ip4/34.174.22.166/udp/30000/quic-v1" \
  --peer "/ip4/34.129.248.106/udp/30000/quic-v1" \
  --peer "/ip4/34.18.98.38/udp/30000/quic-v1" \
  > /Users/cloud/miner.log" 2>&1 &

echo "Launched NockChain miners"
