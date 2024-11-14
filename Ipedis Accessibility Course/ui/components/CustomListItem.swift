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
                            .foregroundColor(.white)
                            .padding(4)
                            .background(Color.red)
                            .cornerRadius(20)
                    }
                    Text("Longue description pour \(name) sur plusieurs lignes pour un petit écran")
                        .font(.body)
                        .padding(.horizontal, 4)
                }
                .frame(maxWidth: .infinity, alignment: .leading)
                
                Image(systemName: "chevron.right")
                    .foregroundColor(.gray)
            }
            .padding(16)
            .customClick(action: onClick)
    }
}

struct CustomListItem_Previews: PreviewProvider {
    static var previews: some View {
        CustomListItem(name: "Option 1")
    }
}
