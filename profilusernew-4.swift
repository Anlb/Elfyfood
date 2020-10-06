//
//  profilusernew.swift
//  pouetui
//
//  Created by Laboureur Angeline on 03/02/2020.
//  Copyright © 2020 Laboureur Angeline. All rights reserved.
//

import SwiftUI

struct profilusernew: View {
    
    let correctUsername = "aaaa"
    let correctPassword = "aaaa"
    
    @State var username : String = ""
    @State var password: String = ""
    @Binding var isConnected: Bool
    @State var showUpdatePassword: Bool = false

    var body: some View {
        
        NavigationView {
            // body
            
            VStack(spacing:55) {
                
                Spacer()
                
                
                Image("logo").resizable()
                    .frame(width:170, height:140)
                
                
                //username
                
                VStack (alignment:.leading, spacing:19){
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
                            // Vérifier si email ok et password ok
                            /*
                             if self.username == self.correctUsername && self.password == self.correctPassword {
                             
                             
                             
                             }
                             */
                            UserDefaults.standard.set(true, forKey: "isConnected")
                            self.isConnected = true
                        },  label: {
                            Text("Se Connecter")
                                .padding(13)
                                .frame (minWidth:0, maxWidth: .infinity)
                                .background(Color.green)
                                .foregroundColor(.white)
                                .cornerRadius(16)
                            
                        })
                        
                        VStack {
                            
                            NavigationLink(destination:registeruser(isConnected: $isConnected)){
                                Text("Inscription")
                                    .font(.system(size: 14, weight:.medium))
                                    .foregroundColor(.gray)
                            }
                            NavigationLink(destination: passwordlost(showUpdatePassword: $showUpdatePassword), isActive: $showUpdatePassword){
                                Text("Mot de passe perdu ?")
                                    .font(.system(size: 14, weight:.medium))
                                    .foregroundColor(.gray)
                            }
                            
                            
                            Spacer()
                        }
                        
                    }
                }.padding(.horizontal,43)
            }
        }
    }
}




//struct profilusernew_Previews: PreviewProvider {
//    @State var isConnected = false
//    static var previews: some View {
//        profilusernew(isConnected: $isConnected)
//    }
//}
//
//
