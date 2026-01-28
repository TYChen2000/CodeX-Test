import SwiftUI

@main
struct ChildTrainingManagerApp: App {
    var body: some Scene {
        WindowGroup {
            DashboardView(viewModel: DashboardViewModel())
        }
    }
}
