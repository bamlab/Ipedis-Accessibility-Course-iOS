import SwiftUI

struct DetailScreen: View {
    
    @EnvironmentObject var router: Router

    var body: some View {
            VStack(alignment: .leading, spacing: 16) {
                CustomIconButton(iconName: "arrow.left") {
                    router.navigateBack()
                }
                Text("Page de détail")
                    .font(.body)
                    .foregroundColor(.secondary)
            }
            .padding()
        
        .navigationTitle("Details")
    }
}
