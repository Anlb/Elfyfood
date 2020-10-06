//
//  registeruser.swift
//  pouetui
//
//  Created by Laboureur Angeline on 05/02/2020.
//  Copyright © 2020 Laboureur Angeline. All rights reserved.
//

import SwiftUI

struct registeruser: View {
   
    // FAIRE UN BOUTON RETOUR EN HAUT A GAUCHE

        // State
        
        @State var pseudo : String = ""
        @State var username : String = ""
        @State var password: String = ""
        @Binding var isConnected : Bool
    
        var body: some View {
            
            
            // body
            
            VStack(spacing:55) {
                
                Spacer()
                
                
                Image("logo").resizable()
                    .frame(width:170, height:140)
                
                
                VStack (alignment:.leading, spacing:19){
                    
                    // login
                
                    TextField("Pseudo", text:$pseudo)
                                          .padding(12)
                                          .overlay(RoundedRectangle(cornerRadius:16)
                                              .stroke(Color.green, lineWidth:2)
                                      )
                    
                    
                    TextField("Email", text:$username)
                        .padding(12)
                        .overlay(RoundedRectangle(cornerRadius:16)
                            .stroke(Color.green, lineWidth:2)
                            
                    )
                    
                    // password
                    VStack (spacing:19){
                        SecureField("Mot de passe", text:$password)
                            .padding(12)
                            .overlay(RoundedRectangle(cornerRadius:16)
                                .stroke(Color.green, lineWidth:2)
                                
                        )
                        // button
                        
                    
                        Button(action: {
                            UserDefaults.standard.set(true, forKey: "isConnected")

                            self.isConnected = true
                        
                            
                            // What to perform
                        },  label: {
                            Text("Je m'inscris")
                                .padding(13)
                                .frame (minWidth:0, maxWidth: .infinity)
                                .background(Color.green)
                                .foregroundColor(.white)
                                .cornerRadius(16)
                            
                        })
                        
                
                       
                  
                            
                            Spacer()
                      
                        
                    }
                }.padding(.horizontal,43)
            }
        }
    }

    
       
        

        
        
        
        
        
        
        
        
        
        

struct registeruser_Previews: PreviewProvider {
    @State static var isConnected = false
    static var previews: some View {
        registeruser(isConnected: $isConnected)
    }
}
