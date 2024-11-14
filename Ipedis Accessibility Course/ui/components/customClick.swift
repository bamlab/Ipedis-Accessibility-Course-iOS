import SwiftUI

extension View {
    func customClick(action: @escaping () -> Void, accessibilityLabel: String = "") -> some View {
        self
            .onTapGesture {
                action()
            }
    }
}