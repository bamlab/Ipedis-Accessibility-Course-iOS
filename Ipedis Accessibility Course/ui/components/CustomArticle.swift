import SwiftUI

struct CustomArticle: View {
    var title: String
    var content: String

    var body: some View {
        VStack(alignment: .leading) {
            Text(title)
                .font(.headline)
                .padding(.bottom, 4)
            Text(content)
                .font(.body)
                .foregroundColor(.secondary)
        }
        .padding()
    }
}
