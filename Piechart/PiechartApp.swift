import SwiftUI

@main
struct PiechartApp: App {
    var body: some Scene {
        WindowGroup {
            ContentView(languages: fakeLanguages)
        }
    }
}
