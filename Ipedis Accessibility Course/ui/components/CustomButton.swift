import SwiftUI

struct CustomButton: View {
    var title: String
    var action: () -> Void

    var body: some View {
        VStack {
            Text(title)
                .font(.headline)
        }
        .padding()
        .background(Color.blue)
        .foregroundColor(.white)
        .cornerRadius(8)
        .customClick(action: action)
    }
}
