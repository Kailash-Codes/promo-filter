#!/bin/sh
# Checks Ext/Rules.swift against sample messages in check/main.swift.
cd "$(dirname "$0")" && swiftc -o /tmp/promofilter-check Ext/Rules.swift check/main.swift && /tmp/promofilter-check
