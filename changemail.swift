//
//  changemail.swift
//  ELFYFOOD
//
//  Created by Pascaline Thuilliez on 10/02/2020.
//  Copyright © 2020 Maertens Yann-Christophe. All rights reserved.
//

import SwiftUI

struct changemail: View {
 

        
         private let oldMailToConfirmAgainst = "12345"
            @State private var oldMail = ""
            @State private var newMail = ""
            @State private var confirmedMail = ""
            @State private var showErrorAlert = false

            var body: some View {

                
                
                VStack {
                    Section(header: Text("Email")
                     .font(.system(size:25))) {
                        
                        SecureField("Ancien email", text: $oldMail)
                            .padding(12)
                            .overlay(RoundedRectangle(cornerRadius:16)
                                .stroke(Color.green, lineWidth:2)
                        )
                        SecureField("Nouveau email", text: $newMail)
                            .padding(12)
                            .overlay(RoundedRectangle(cornerRadius:16)
                                .stroke(Color.green, lineWidth:2)
                        )
                        SecureField("Confirmer nouveau email", text: $confirmedMail)
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
                        Text("Changer l'email")
                        .padding(13)
                                .frame (minWidth:0, maxWidth: .infinity)
                                .background(Color.green)
                                .foregroundColor(.white)
                                .cornerRadius(16)

                    })
                    
                }.alert(isPresented: $showErrorAlert) {
                    Alert(title: Text("Erreur"), message: Text("Email incorrect"))
                }.padding(.horizontal,43)
            }

            private func isPasswordValid() -> Bool {
                if oldMail != oldMailToConfirmAgainst {
                    return false
                }

                if !newMail.isEmpty && newMail == confirmedMail{
                    return true
                }

                return false
            }
        }
       
        
        

        
        
        
struct changemail_Previews: PreviewProvider {
    static var previews: some View {
        changemail()
    }
}
