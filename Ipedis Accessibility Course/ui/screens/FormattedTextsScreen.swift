//
//  FormattedTextsScreen.swift
//  Ipedis Accessibility Course
//
//  Created by Dennis BORDET on 12/12/2024.
//


import SwiftUI

struct FormattedTextsScreen: View {
    // create a function that give the formated currency
    func formatCurrency(value: Double) -> String {
        let formatter = NumberFormatter()
        formatter.numberStyle = .currency
        formatter.currencyCode = "EUR"
        formatter.locale = Locale(identifier: "fr_FR") // Localisation en français
        return formatter.string(from: NSNumber(value: value)) ?? "default value when currency is nil"
    }
    
    var body: some View {
        ScrollView {
            VStack(alignment: .leading) {
                
                
                
                HStack {
                    Text("Date: ")
                        .font(.body)
                    Text("25 fev 24")
                        .font(.body)
                }
                .padding(.bottom, 8)

                HStack {
                    Text("Somme positive: ")
                        .font(.body)
                    Text("2.03€")
                        .font(.body)
                }
                .padding(.bottom, 8)

                HStack {
                    Text("Somme négative: ")
                        .font(.body)
                    Text("-2.03€")
                        .font(.body)
                }
                .padding(.bottom, 8)

                let bankAccountNumber = BankAccountNumber(number: "6778413027389182")
                HStack {
                    Text("Numéro de compte bancaire: ")
                        .font(.body)
                    Text(bankAccountNumber.formatted)
                        .font(.body)
                }
            }
            .padding()
        }
    }
}

struct BankAccountNumber {
    private let number: String
    
    init(number: String) {
        self.number = number
    }
    
    var formatted: String {
        let start = number.prefix(4)
        let end = number.suffix(4)
        return "\(start) xxxx xxxx \(end)"
    }
    
    var vocalized: String {
        let start = number.prefix(4)
        let end = number.suffix(4)
        return "Compte bancaire commençant par \(start) et finissant par \(end)"
    }
}

struct FormattedTextsScreen_Previews: PreviewProvider {
    static var previews: some View {
        FormattedTextsScreen()
    }
}
