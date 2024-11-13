import SwiftUI

@main
struct Ipedis_Accessibility_CourseApp: App {
    @StateObject private var router = Router()
        
        var body: some Scene {
            WindowGroup {
                ContentView()
                    .environmentObject(router)
            }
        }
}
