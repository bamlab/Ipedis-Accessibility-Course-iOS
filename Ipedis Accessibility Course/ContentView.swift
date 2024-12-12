import SwiftUI

struct ContentView: View {
    @EnvironmentObject var router: Router
       
    var body: some View {
        NavigationStack(path: $router.navPath) {
            TabsScreen()
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
                    default:
                        EmptyView()
                    }
                }
        }
    }
}

#Preview {
    ContentView()
}
