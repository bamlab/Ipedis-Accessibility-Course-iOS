//
//  TitlesScreen.swift
//  Ipedis Accessibility Course
//
//  Created by Dennis BORDET on 12/12/2024.
//


import SwiftUI

struct TitlesScreen: View {
    var body: some View {
        ScrollView {
            VStack(alignment: .leading) {
                ForEach(1...20, id: \.self) { i in
                    Text("Titre numéro \(i)")
                        .font(.headline)
                        .padding(.bottom, 4)
                    Text("""
                        Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed non risus. Suspendisse lectus tortor, dignissim sit amet, adipiscing nec, ultricies sed, dolor. Cras elementum ultrices diam. Maecenas ligula massa, varius a, semper congue, euismod non, mi. Proin porttitor, orci nec nonummy molestie, enim est eleifend mi, non fermentum diam nisl sit amet erat. Duis semper. Duis arcu massa, scelerisque vitae, consequat in, pretium a, enim. Pellentesque congue.
                        """)
                        .font(.body)
                        .padding(.bottom, 16)
                }
            }
            .padding()
        }
    }
}

struct TitlesScreen_Previews: PreviewProvider {
    static var previews: some View {
        TitlesScreen()
    }
}
