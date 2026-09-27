# PromoFilter

Tiny iOS SMS filter (iOS 16+) that sends carrier promo messages to Junk. Rules are regexes in `Ext/Rules.swift`.

## Setup

1. `cp local.env.example local.env` and fill in your team ID and bundle prefix.
2. `brew install ideviceinstaller`
3. Plug in the iPhone and run `./install.sh`.
4. On the phone: Settings → Messages → Unknown & Spam → Filter Unknown Senders → pick PromoFilter.

## Adding a rule

Add a regex to `promoPatterns` in `Ext/Rules.swift`, optionally a sample to `check/main.swift`, then `./install.sh`.

Only SMS from senders not in Contacts are filtered. Matches go to the Junk tab, not deleted.
