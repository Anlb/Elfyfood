//
//  Salade.swift
//  page de recherche
//
//  Created by yenbou on 05/02/2020.
//  Copyright © 2020 yenbou. All rights reserved.
//

import SwiftUI

struct RecipeCategory: View {
    
    var category: RecipeCat
    
    var body: some View {
        VStack {
            PostCell(imageName: category.imageName, postName: category.title.uppercased())
            
            Spacer()
            
            ScrollView(.horizontal, showsIndicators: false) {
                HStack {
                    
                    ForEach(recipesMock.filter { recipe in recipe.category == category }, id: \.id) { recipe in
                        NavigationLink(destination: RecipeDetails(recipe: recipe)) {
                            RecipeCell(imageName: recipe.imageName, title: recipe.name)
                        }
                    }
                }
            }
            Spacer()
        }.navigationBarTitle("", displayMode: .inline)
            .foregroundColor(.black)
    }
}


struct RecipeCell : View {
    var imageName: String
    var title: String
    var body: some View {
        
        VStack {
            Image(imageName)
                .renderingMode(.original)
                .resizable().frame(width: 200, height: 180)
                .scaledToFit()
                .padding([.horizontal, .top], 1)
                .cornerRadius(20)
            Text(title).lineLimit(2).foregroundColor(.black)
            
            
        }
    }
}

struct Salade_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView {
            RecipeCategory(category: .asiatique)
        }
    }
}

