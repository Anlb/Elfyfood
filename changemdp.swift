//
//  changemdt.swift
//  ELFYFOOD
//
//  Created by Pascaline Thuilliez on 10/02/2020.
//  Copyright © 2020 Maertens Yann-Christophe. All rights reserved.
//

import SwiftUI

struct changemdp: View {

    private let oldPasswordToConfirmAgainst = "12345"
    @State private var oldPassword = ""
    @State private var newPassword = ""
    @State private var confirmedPassword = ""
    @State private var showErrorAlert = false

    var body: some View {

        
        
        VStack {
            Section(header: Text("Mot de passe")
             .font(.system(size:25))) {
                
                SecureField("Ancien mot de passe", text: $oldPassword)
                    .padding(12)
                    .overlay(RoundedRectangle(cornerRadius:16)
                        .stroke(Color.green, lineWidth:2)
                )
                SecureField("Nouveau mot de passe", text: $newPassword)
                    .padding(12)
                    .overlay(RoundedRectangle(cornerRadius:16)
                        .stroke(Color.green, lineWidth:2)
                )
                SecureField("Confirmer nouveau mot de passe", text: $confirmedPassword)
                    .padding(12)
                    .overlay(RoundedRectangle(cornerRadius:16)
                        .stroke(Color.green, lineWidth:2)
                )
                
                // Fields go here
            }
            
            Button(action: {
                if self.isPasswordValid() {
                    
                } else {
                    self.showErrorAlert = true
                }
            }, label: {
                Text("Changer le mot de passe")
                .padding(13)
                        .frame (minWidth:0, maxWidth: .infinity)
                        .background(Color.green)
                        .foregroundColor(.white)
                        .cornerRadius(16)

            })
            
        }.alert(isPresented: $showErrorAlert) {
            Alert(title: Text("Erreur"), message: Text("Mot de passe incorrect"))
        }.padding(.horizontal,43)
    }

    private func isPasswordValid() -> Bool {
        if oldPassword != oldPasswordToConfirmAgainst {
            return false
        }

        if !newPassword.isEmpty && newPassword == confirmedPassword {
            return true
        }

        return false
    }
}
struct changemdp_Previews: PreviewProvider {
    
    static var previews: some View {
        changemdp()
    }
}
