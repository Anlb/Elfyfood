//
//  PostCell.swift
//  page de recherche
//
//  Created by yenbou on 04/02/2020.
//  Copyright © 2020 yenbou. All rights reserved.
//

import SwiftUI

struct PostCell: View {
    
    let imageName: String
    let postName: String
    
    var body: some View {
        
        ZStack {
            Image(imageName)
                .renderingMode(.original)
                .resizable()
                .frame(width: UIScreen.main.bounds.width, height: 276)
                .opacity(0.5)
                .background(Color.black)
            
        Text(postName)
            .foregroundColor(.white)
            .fontWeight(.bold)
            .font(.largeTitle)
            .opacity(1)
        }
    }
    
}

struct PostCell_Previews: PreviewProvider {
    static var previews: some View {
        PostCell(imageName: "Salade", postName: "SALADE")
    }
}
