import SwiftUI

struct CustomBadgedBox<Content: View>: View {
    var badgeText: String
    let content: () -> Content

    var body: some View {
        ZStack(alignment: .topTrailing) {
            content()
                .padding()
            Text(badgeText)
                .font(.caption)
                .padding(5)
                .background(Color.red)
                .foregroundColor(.white)
                .clipShape(Circle())
                .offset(x: 10, y: -10)
        }
    }
}
