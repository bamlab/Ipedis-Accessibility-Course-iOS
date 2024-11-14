import SwiftUI

struct CustomIconButton: View {
    var iconName: String
    var action: () -> Void

    var body: some View {
        
            Image(systemName: iconName)
                .font(.title)
                .padding()
                .background(Color.blue)
                .foregroundColor(.white)
                .clipShape(Circle())
                .customClick(action: action)
    }
}
