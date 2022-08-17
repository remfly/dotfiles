#!/usr/bin/env bash

API="https://api.kraken.com/0/public/Ticker"

quote=$(curl -sf ${API}?pair=XMRUSD | jq -r ".result.XXMRZUSD.c[0]")
quote=$(LANG=C printf "%.2f" "$quote")

echo "XMR: $quote    "
