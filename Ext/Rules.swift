import Foundation

// New promo format? Add a regex line, run `./check.sh`, then Run in Xcode.
// Matching is case-insensitive. Only SMS from senders not in Contacts reach the filter.
let promoPatterns = [
    #"ncellapp\.ncell\.com\.np"#,
    #"FREE\s*\d+\s*(MB|GB)"#,
]

func isPromo(_ text: String) -> Bool {
    promoPatterns.contains { text.range(of: $0, options: [.regularExpression, .caseInsensitive]) != nil }
}
