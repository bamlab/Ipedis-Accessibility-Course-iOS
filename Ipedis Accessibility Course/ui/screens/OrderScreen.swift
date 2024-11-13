import SwiftUI

struct OrderScreen: View {
    @EnvironmentObject var router: Router
    var body: some View {
    
            TraversalGroupDemo()
            .navigationTitle("Order")
    }
}


struct CardBox: View {
    var topSampleText: String
    var bottomSampleText: String

    var body: some View {
        VStack(alignment: .leading, spacing: 4) {
            Text(topSampleText)
            Text(bottomSampleText)
        }
        .padding()
        .background(Color(.secondarySystemBackground))
        .cornerRadius(8)
    }
}

struct TraversalGroupDemo: View {
    var body: some View {
        let topSampleText1 = "This sentence is in "
        let bottomSampleText1 = "the left column."
        let topSampleText2 = "This sentence is "
        let bottomSampleText2 = "on the right."

        HStack(alignment: .top) {
            CardBox(topSampleText: topSampleText1, bottomSampleText: bottomSampleText1)
            Spacer()
            CardBox(topSampleText: topSampleText2, bottomSampleText: bottomSampleText2)
        }
        .padding()
    }
}

struct OrderScreen_Previews: PreviewProvider {
    static var previews: some View {
        OrderScreen()
    }
}
