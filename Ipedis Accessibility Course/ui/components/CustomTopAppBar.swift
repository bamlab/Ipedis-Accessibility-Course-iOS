import SwiftUI

struct CustomTopAppBar: View {
    var title: String
    var leadingIconName: String?
    var trailingIconName: String?
    var onLeadingIconTap: (() -> Void)?
    var onTrailingIconTap: (() -> Void)?

    var body: some View {
        HStack {
            if let leadingIconName = leadingIconName {
                Button(action: {
                    onLeadingIconTap?()
                }) {
                    Image(systemName: leadingIconName)
                        .font(.title)
                }
            }
            Spacer()
            Text(title)
                .font(.headline)
            Spacer()
            if let trailingIconName = trailingIconName {
                Button(action: {
                    onTrailingIconTap?()
                }) {
                    Image(systemName: trailingIconName)
                        .font(.title)
                }
            }
        }
        .padding()
        .background(Color.gray.opacity(0.2))
    }
}
