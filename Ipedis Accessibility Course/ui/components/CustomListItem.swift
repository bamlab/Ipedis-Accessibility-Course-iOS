import SwiftUI

struct CustomListItem: View {
    var name: String
    var onClick: () -> Void = {}

    var body: some View {
            HStack(alignment: .center, spacing: 0) {
                VStack(alignment: .leading, spacing: 8) {
                    HStack(alignment: .center, spacing: 12) {
                        Text(name)
                            .font(.headline)
                        Text("Alerte")
                            .font(.body)
                            .foregroundStyle(.white)
                            .padding(4)
                            .background(Color.red)
                            .clipShape(.capsule)
                    }
                    Text("Longue description pour \(name) sur plusieurs lignes pour un petit écran")
                        .font(.body)
                        .padding(.horizontal, 4)
                }
                .frame(maxWidth: .infinity, alignment: .leading)
                
                Image(systemName: "chevron.right")
                    .foregroundStyle(.gray)
                    .accessibilityHidden(true)
            }
            .padding(16)
            .customClick(action: onClick)
    }
}

#Preview {
    CustomListItem(name: "Option 1")
}
