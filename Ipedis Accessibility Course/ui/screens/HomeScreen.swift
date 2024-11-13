import SwiftUI

struct HomeScreen: View {
    @EnvironmentObject var router: Router

    var body: some View {
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
            
            CustomButton(title: "Voir la Liste") {
                router.navigate(to: .list)
            }

            CustomButton(title: "Voir l'ordre") {
                router.navigate(to: .order)
            }
        }
        .navigationTitle("Home")
    }
}
