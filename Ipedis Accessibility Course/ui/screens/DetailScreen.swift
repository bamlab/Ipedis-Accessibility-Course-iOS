import SwiftUI

struct DetailScreen: View {
    
    @EnvironmentObject var router: Router
    @State private var moreVisible: Bool = false

    var body: some View {
        VStack(alignment: .leading, spacing: 16) {
            HStack {
                CustomIconButton(iconName: "arrow.left") {
                    router.navigateBack()
                }
                Spacer()
                CustomBadgedBox(badgeText: "2") {
                    Image(systemName: "heart.fill")
                        .font(.title)
                        .padding()
                        .background(Color.blue)
                        .foregroundColor(.white)
                        .clipShape(Circle())
                }
            }
            
            Text("Ceci est la page de détail")
            Spacer().frame(height: 100)
            Text("Nos offres")
                .font(.headline)
            CustomButton(title: "En savoir plus") {
                moreVisible = true
            }
            if moreVisible {
                Text("Voici plus d'informations sur nos offres")
            }
        }
        .padding()
        .navigationTitle("Details")
    }
}
