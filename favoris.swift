//
//  favoris.swift
//  ELFYFOOD
//
//  Created by Maertens Yann-Christophe on 05/02/2020.
//  Copyright © 2020 Maertens Yann-Christophe. All rights reserved.
//

import SwiftUI


struct Favoris: View {
   // @ObservedObject var favorites = Favorites()
    
    @State var favoriteRecipes = FavoriteRecipes().allFavoritesRecipes
    
    var body: some View {
        NavigationView {
       //     .environmentObject(favorites)
            
            VStack {
                RecipeGrid(recettes: favoriteRecipes).navigationBarTitle("Favoris")
            }.onAppear() {
                self.favoriteRecipes = FavoriteRecipes().allFavoritesRecipes
            }
            
        }
    }
    
    
}



struct Favoris_Previews: PreviewProvider {
    static var previews: some View {
        Favoris()
    }
}
