import SwiftUI

struct HomeScreen: View {
    @EnvironmentObject var router: Router

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
                
                CustomArticle(title: "Article 1", content: "Ceci est le contenu de l'article 1")
                
                VStack {
                    CustomButton(title: "Voir la Liste") {
                        router.navigate(to: .list)
                    }
                    CustomButton(title: "Voir l'ordre") {
                        router.navigate(to: .order)
                    }
                    CustomButton(title: "Voir nos offres") {
                        router.navigate(to: .offer)
                    }
                    CustomButton(title: "Canvas") {
                        router.navigate(to: .canvas)
                    }
                    CustomButton(title: "Titres") {
                        router.navigate(to: .titles)
                    }
                }
            }
            .navigationTitle("Home")
        }
    }
}
