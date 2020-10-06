//
//  recipeGrid.swift
//  RECETTE PETIT DEJEUNER
//
//  Created by saliha hadjamar on 05/02/2020.
//  Copyright © 2020 saliha hadjamar. All rights reserved.
//

import SwiftUI

struct RecipeGrid: View {
    let recettes: [Recipe]
    
    var body: some View {
        QGrid(recettes,
              columns: 2,
              vSpacing: 30,
              hSpacing: 20,
              vPadding: 0,
              hPadding: 20
        ) { recette in
            HStack {
                NavigationLink(destination: RecipeDetails(recipe: recette)) {
                    plan(recette: recette)
                }
//                if Favorites().contains(recipe: recette) {
//                    Spacer()
//                    Image(systemName: "heart.fill")
//                        .accessibility(label: Text("This is a favorite resort"))
//                        .foregroundColor(Color.red)
//                    
//                }
                //plan(recette: recette)
            }
            
        }
    }
}

struct plan : View {
    var recette: Recipe
    var body: some View {
        
        VStack {
            Image(recette.imageName)
                .renderingMode(.original)
                .resizable().frame(width : 165, height: 165 )
                .cornerRadius(20)
                .scaledToFit()
                .padding([.horizontal, .top], 7)
                .cornerRadius(20)
            Text(recette.name).lineLimit(1).foregroundColor(.primary)
        }
    }
}
