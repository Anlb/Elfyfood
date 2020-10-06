//
//  POSTCELL.swift
//  ElfyFood Final
//
//  Created by saliha hadjamar on 06/02/2020.
//  Copyright © 2020 saliha hadjamar. All rights reserved.
//

import Foundation
import SwiftUI
struct POSTCELL: View {
    
    let imageName: String
    let postName: String
    
    var body: some View {
        
        ZStack{
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

struct POSTCELL_Previews: PreviewProvider {
    static var previews: some View {
        POSTCELL(imageName: "petit dejeuner", postName:"PETIT-DEJEUNER")
    }
}
