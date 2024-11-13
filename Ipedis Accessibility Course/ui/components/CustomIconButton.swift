import SwiftUI

struct CustomIconButton: View {
    var iconName: String
    var action: () -> Void

    var body: some View {
        Button(action: action) {
            Image(systemName: iconName)
                .font(.title)
                .padding()
                .background(Color.blue)
                .foregroundColor(.white)
                .clipShape(Circle())
        }
    }
}
