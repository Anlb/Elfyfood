//
//  passwordlost.swift
//  ELFYFOOD
//
//  Created by Pascaline Thuilliez on 10/02/2020.
//  Copyright © 2020 Maertens Yann-Christophe. All rights reserved.
//

import SwiftUI

struct passwordlost: View {

    @State var username : String = ""
    @Binding var showUpdatePassword: Bool
  var body: some View {


     NavigationView {


        VStack (spacing:19) {

            Spacer()

            Text("Mot de passe oublié")

                .font(.system(size:25))

            TextField("Email", text:$username).autocapitalization(.none)
                 .padding(12)
                .overlay(RoundedRectangle(cornerRadius:16)
                .stroke(Color.green, lineWidth:2)

               )



            Button(action: {
self.showUpdatePassword = false
                                    // What to perform
                                },  label: {
                                    Text("Envoyer")
                                        .padding(13)
                                        .frame (minWidth:0, maxWidth: .infinity)
                                        .background(Color.green)
                                        .foregroundColor(.white)
                                        .cornerRadius(16)

                                })

                Spacer()

            .navigationBarTitle("")

            Spacer()


        } .padding(.horizontal,43)

    }

}
    }

struct passwordlost_Previews: PreviewProvider {
    @State static var showUpdatePassword = true
    static var previews: some View {
       passwordlost(showUpdatePassword: $showUpdatePassword)
    }
}
