//
//  File.swift
//  ElfyFood Final
//
//  Created by saliha hadjamar on 05/02/2020.
//  Copyright © 2020 saliha hadjamar. All rights reserved.
//

import SwiftUI

struct MealSuggestion: View {
    
    let meal: Meal

    var body: some View {
        VStack {
            Image(meal.imageName).resizable().aspectRatio(contentMode: .fit)
            RecipeGrid(recettes: recipesMock.filter { $0.mealType == meal.type })
                
            
        }.navigationBarTitle(meal.type.rawValue)
    }
}
