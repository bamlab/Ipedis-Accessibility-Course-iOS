
import SwiftUI

struct OfferScreen: View {
    
    var body: some View {
        VStack {

            let imageContentDescription = "Nos offres d'emploi"

            Image("nosoffresfrancetravail")
                .resizable()
                .scaledToFit()
                .frame(maxWidth: .infinity)
                .accessibility(label: Text(imageContentDescription))

            List(0..<4) { index in
                Text("Offre d'emploi n°\(index)")
                    .frame(height: 50)
            }
        }
    }
}

struct OfferScreen_Previews: PreviewProvider {
    static var previews: some View {
        OfferScreen()
    }
}
