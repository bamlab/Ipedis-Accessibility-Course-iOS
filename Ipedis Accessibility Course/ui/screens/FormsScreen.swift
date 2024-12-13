//
//  FormsScreen.swift
//  Ipedis Accessibility Course
//
//  Created by Dennis BORDET on 12/12/2024.
//


import SwiftUI

struct FormsScreen: View {
    @State private var email: String = ""
    @State private var phone: String = ""
    @State private var isFormSent: Bool = false

    var body: some View {
        ScrollView {
            VStack(alignment: .leading, spacing: 16) {
                let badErrorText = "Le champ email est en erreur"
                let betterErrorText = "Le champ email est obligatoire. Format attendu : nom@mail.com"
                
                CustomTextField(
                    value: $email,
                    label: "Email",
                    supportingText: badErrorText,
                    isError: !isValidEmail(email)
                )

                CustomTextField(
                    value: $phone,
                    label: "Telephone",
                    supportingText: "Le numéro de téléphone doit contenir exactement 10 chiffres",
                    isError: !isValidPhone(phone)
                )
            
                let formSaved = "Formulaire enregistré avec succès"
                Button(action: {
                    isFormSent = true
                }, label: {
                    Text("Envoyer")
                })
                .padding()
                .disabled(isFormSent)

                if isFormSent {
                    Text("Formulaire enregistré avec succès")
                        .padding()
                }
            }
            .padding()
        }
    }

    private func isValidEmail(_ email: String) -> Bool {
        // Ajoutez ici la logique pour valider l'email
        return email.contains("@") && email.contains(".")
    }

    private func isValidPhone(_ phone: String) -> Bool {
        // Vérifie que le numéro de téléphone a exactement 10 chiffres
        return phone.count == 10 && phone.allSatisfy { $0.isNumber }
    }
}
struct CustomTextField: View {
    @Binding var value: String
    var label: String
    var supportingText: String
    var isError: Bool
    var keyboardType: UIKeyboardType = .default

    var body: some View {
        VStack(alignment: .leading, spacing: 4) {
            Text(label)
                .font(.subheadline)
                .foregroundColor(.primary)

            TextField("", text: $value)
                .keyboardType(keyboardType)
                .textFieldStyle(RoundedBorderTextFieldStyle())
                .padding(.bottom, 4)

            if isError {
                Text(supportingText)
                    .font(.footnote)
                    .foregroundColor(.red)
            } else {
                Text(supportingText)
                    .font(.footnote)
                    .foregroundColor(.gray)
            }
        }
        
    }
}

struct FormsScreen_Previews: PreviewProvider {
    static var previews: some View {
        FormsScreen()
    }
}
