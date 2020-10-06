//
//  Sandwich.swift
//  ELFYFOOD
//
//  Created by Maertens Yann-Christophe on 11/02/2020.
//  Copyright © 2020 Maertens Yann-Christophe. All rights reserved.
//

import SwiftUI

struct Sandwich: View {
  
    var body: some View {
            VStack {
                PostCell(imageName: "sandwich", postName: "SANDWICH")
                
                Spacer()
                
                ScrollView(.horizontal, showsIndicators: false) {
                    HStack {
                      
                    ingr(imagesalade: "sandwich", titresalade: "Sandwich au poulet")
                    ingr(imagesalade: "sandwich saumon", titresalade: "Sandwich au saumon")
                        
                    }
                }
                Spacer()
            }.navigationBarTitle("SANDWICH", displayMode: .inline)
            .foregroundColor(.black)
    }
}


struct ingr1 : View {
    let imagesandwich: String
    let titresandwich: String
         var body: some View {
             
             VStack {
                 Image(imagesandwich)
                     .renderingMode(.original)
                     .resizable().frame(width: 200, height: 180)
                     .scaledToFit()
                     .padding([.horizontal, .top], 1)
                     .cornerRadius(20)
    Text(titresandwich).lineLimit(2).foregroundColor(.black)
                
                 
             }
         }
     }

struct Sandwich_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView {
        Sandwich()
        }
    }
}
