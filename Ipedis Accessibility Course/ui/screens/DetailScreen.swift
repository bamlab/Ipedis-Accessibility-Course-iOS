import SwiftUI

struct DetailScreen: View {
    
    @EnvironmentObject var router: Router
    @State private var moreVisible: Bool = false

    var body: some View {
        VStack(alignment: .leading, spacing: 16) {
            CustomBadgedBox(badgeText: "2") {
                Image(systemName: "heart.fill")
                    .font(.title)
                    .padding()
                    .background(Color.blue)
                    .foregroundColor(.white)
                    .clipShape(Circle())
            }
            
            Text("Ceci est la page de détail")
            Spacer().frame(height: 100)
            Text("Nos offres")
                .font(.headline)
            Image("nosoffres")
                .resizable()
                .frame(width: 200, height: 200)
                .aspectRatio(contentMode: .fill)
            Button(action: {moreVisible = true}) {
                Text("En savoir plus")
            }.buttonStyle(.borderedProminent)
            if moreVisible {
                Text("Voici plus d'informations sur nos offres")
            }
        }
        .padding()
        .navigationTitle("Details")
    }
}

struct DetailScreen_Previews: PreviewProvider {
    static var previews: some View {
        DetailScreen()
    }
}
