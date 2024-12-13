import SwiftUI

struct ContentView: View {
    @EnvironmentObject var router: Router
       
    var body: some View {
        NavigationStack(path: $router.navPath) {
            HomeScreen()
                .navigationDestination(for: Router.Destination.self) { destination in
                    switch destination {
                    case .home:
                        HomeScreen()
                    case .list:
                        ListScreen()
                    case .order:
                        OrderScreen()
                    case .detail:
                        DetailScreen()
                    case .offer:
                        OfferScreen()
                    case .canvas:
                        CanvasScreen()
                    case .titles:
                        TitlesScreen()
                    case .formatedTexts:
                        FormattedTextsScreen()
                    case .tabs:
                        TabsScreen()
                    case .forms:
                        FormsScreen()
                    }
                }
        }
    }
}

#Preview {
    ContentView()
}
