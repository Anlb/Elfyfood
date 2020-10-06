//
//  favoritesfunction.swift
//  ELFYFOOD
//
//  Created by Maertens Yann-Christophe on 07/02/2020.
//  Copyright © 2020 Maertens Yann-Christophe. All rights reserved.
//

 import SwiftUI

struct FavoriteRecipes {
    let defaultsFavorites = "FavoriteRecipes"

    var allFavoritesRecipes: [Recipe] {
        let favoriteIds = UserDefaults.standard.array(forKey: defaultsFavorites) as? [String]
        return favoriteIds?.compactMap { id in
            recipesMock.first { recipe in
                recipe.id == id
            }
        } ?? []
    }

    func isRecipeFavorite(id: String) -> Bool {
        let favoriteIds = UserDefaults.standard.array(forKey: defaultsFavorites) as? [String]
        return favoriteIds?.contains(id) ?? false
    }

    func add(recipeId: String) {
        var favoriteIds = UserDefaults.standard.array(forKey: defaultsFavorites) as? [String] ?? []
        favoriteIds.append(recipeId)
        UserDefaults.standard.set(favoriteIds, forKey: defaultsFavorites)
    }

    func remove(recipeId: String) {
        var favoriteIds = UserDefaults.standard.array(forKey: defaultsFavorites) as? [String]
        favoriteIds?.removeAll { id in id == recipeId }
        UserDefaults.standard.set(favoriteIds, forKey: defaultsFavorites)
    }
}
