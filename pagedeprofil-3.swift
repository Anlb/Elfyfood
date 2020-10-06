//
//  pagedeprofil.swift
//  pouetui
//
//  Created by Laboureur Angeline on 06/02/2020.
//  Copyright © 2020 Laboureur Angeline. All rights reserved.
//

import SwiftUI

struct pagedeprofil: View {
    
    @State var receive = false
    @State var isConnected = UserDefaults.standard.bool(forKey: "isConnected")
    @State var showUpdatePassword = false
    
    var body: some View {
        ZStack {
            if isConnected {
                NavigationView {
                    VStack {
                        
                        HStack {
                            Form {
                                
                                Toggle(isOn: $receive) {
                                    Text("Recevoir des notifications")
                                }
                                Section (header:Text("Vos informations")) {
                                    
                                    NavigationLink(destination:changemail()){
                                        Text("Modifier l'Email") // ajout de la navigation pour la modification du mot de passe et de l'email de l'utilisateur !
                                    }
                                    NavigationLink(destination:changemdp(), isActive: $showUpdatePassword) {
                                        Text(" Modifier le mot de passe")
                                    }
                                    
                                }
                                
                                VStack {
                                    
                                    Button(action: {
                                        UserDefaults.standard.set(false, forKey: "isConnected")
                                        self.isConnected = false
                                    },  label: {
                                        Text("Déconnexion")
                                            .padding(13)
                                            .frame (minWidth:0, maxWidth: .infinity)
                                            .background(Color.green)
                                            .foregroundColor(.white)
                                            .cornerRadius(16)
                                        
                                    })
                                    
                                    
                                }
                                    
                                    
                                .navigationBarTitle("Profil")
                            }
                        }
                    }
                }
            } else {
                profilusernew(isConnected: $isConnected)
            }
        }
    }
}

struct pageprofil_Previews: PreviewProvider {
    static var previews: some View {
        pagedeprofil()
    }
}


// profil en haut avec bouton retour
// a propos : Confiance de Sécu, Conditions générales, confidentialité
// déco : renvoi à la page de connect
