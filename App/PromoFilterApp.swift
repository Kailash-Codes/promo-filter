import SwiftUI

// Empty host app: iOS only installs a filter extension inside an app.
@main
struct PromoFilterApp: App {
    var body: some Scene {
        WindowGroup {
            Text("Settings → Messages → Unknown & Spam → SMS Filtering → PromoFilter")
                .multilineTextAlignment(.center)
                .padding()
        }
    }
}
