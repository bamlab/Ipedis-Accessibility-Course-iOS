import SwiftUI

struct HomeScreen: View {
    @EnvironmentObject var router: Router
    @State private var isArticleVisible: Bool = true

    var body: some View {
        ScrollView {
            VStack(spacing: 20) {
                Text("Welcome to the Home Screen")
                    .font(.title)
                    .padding()
                
                CustomButton(title: "Voir le détail") {
                    router.navigate(to: .detail)
                }
                CustomIconButton(iconName: "info") {
                    router.navigate(to: .detail)
                }
                
                if(isArticleVisible) {
                    CustomArticle(title: "Article 1", content: "Ceci est le contenu de l'article 1")
                }
                
                VStack {
                    Button(action: {router.navigate(to: .list)}) {
                        Text("Voir la liste")
                    }.buttonStyle(.borderedProminent)
                    Button(action: {router.navigate(to: .order)}) {
                        Text("Voir l'ordre")
                    }.buttonStyle(.borderedProminent)
                    Button(action: {router.navigate(to: .offer)}) {
                        Text("Voir nos offres")
                    }.buttonStyle(.borderedProminent)
                    Button(action: {router.navigate(to: .canvas)}) {
                        Text("Canvas")
                    }.buttonStyle(.borderedProminent)
                    Button(action: {router.navigate(to: .titles)}) {
                        Text("Titres")
                    }.buttonStyle(.borderedProminent)
                    Button(action: {router.navigate(to: .formatedTexts)}) {
                        Text("Textes formatés")
                    }.buttonStyle(.borderedProminent)
                    Button(action: {router.navigate(to: .tabs)}) {
                        Text("Onglets")
                    }.buttonStyle(.borderedProminent)
                    Button(action: {router.navigate(to: .forms)}) {
                        Text("Formulaires")
                    }.buttonStyle(.borderedProminent)
                }
            }
            .navigationTitle("Home")
        }
    }
}

struct HomeScreen_Previews: PreviewProvider {
    static var previews: some View {
        HomeScreen()
    }
}
