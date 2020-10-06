//
//  RecipeDetails.swift
//  ELFYFOOD
//
//  Created by Maertens Yann-Christophe on 04/02/2020.
//  Copyright © 2020 Maertens Yann-Christophe. All rights reserved.
//

import SwiftUI

struct RecipeDetails: View {
    
    
    @State var recipe: Recipe
    @State var isFavorite = false

    @State var rating = 3
    @State var rating2 = 3
    
    var body: some View {
        ScrollView(.vertical) {
            
            VStack {
                Text("\(recipe.name)")
                    .bold()
                    .font(.title)
                
                Image("\(recipe.imageName)")
                    .resizable()
                    .frame(width:  UIScreen.main.bounds.width, height: 276.0)
                
                
                HStack {
                    
                    Text("\(recipe.recipeRating)")
                        .bold()
                        .font(.system(size: 22))
                        .foregroundColor(.primary)
                    RatingView(rating: $rating)
                    
                    
                    Button(action: {
                        self.isFavorite.toggle()
                        if FavoriteRecipes().isRecipeFavorite(id: self.recipe.id) {
                            FavoriteRecipes().remove(recipeId: self.recipe.id)
                        } else {
                            FavoriteRecipes().add(recipeId: self.recipe.id)
                        }
                    }, label: {
                        Image(systemName: isFavorite ? "heart.circle.fill" : "heart.circle")
                            .resizable()
                            .frame(width: 40, height: 40)
                            .foregroundColor(.green)
                    })
                        .padding()
                    
                    
                    
                }
                
                
                HStack {
                    Spacer()
                    
                    
                    Image(systemName: "leaf.arrow.circlepath")
                    Text("\(recipe.dishCategory.rawValue)")
                        .font(.system(size: 18))
                    
                    
                    Image(systemName: "clock")
                    Text("\(recipe.prepareTime, specifier: "%.0f") min |")
                        .font(.system(size: 18))
                    
                    
                    Image(systemName: "eurosign.circle")
                    Text("\(recipe.money, specifier: "%.1f")€ |")
                        .font(.system(size: 18))
                    
                    
                    Image(systemName: "flag")
                    Text("\(recipe.country.rawValue)")
                        .font(.system(size: 18))
                    
                    Spacer()
                }
                VStack {
                    HStack {
                        Image(systemName: "k.circle")
                        Text("\(recipe.calory) Kcal")
                            .font(.system(size: 18))
                    }
                    
                    Text("INGREDIENTS")
                        .bold()
                        .font(.system(size: 25))
                    VStack (alignment :.leading){
                        ForEach(self.recipe.ingredients, id: \.id) { ingredient in
                            HStack {
                                Text("\(ingredient.quantity)\(ingredient.name)")
                            }
                        }
                    }
                }
                Spacer()
                Text("PREPARATION")
                    .bold()
                    .font(.system(size: 25))
                
                ForEach(self.recipe.steps, id: \.id) { step in
                    HStack {
                        
                        VStack {
                            ZStack {
                                Text("\(step.stepNumber)")
                                Image(systemName: "circle")
                                    .font(.system(size: 24))}
                            Text("\(step.stepDescription)").padding().multilineTextAlignment(.center)
                            
                        }
                    }
                }
                VStack {
                    Text("Note cette recette")
                        .bold()
                    RatingView(rating: $rating2)
                    commentaire(recipe: $recipe)
                }
                
            }.onAppear() {
                self.isFavorite = FavoriteRecipes().isRecipeFavorite(id: self.recipe.id)
            }
        }
    }
}



struct prepa: View {
    var image: String
    var steps: String
    var body: some View {
        HStack {
            Image(systemName: "\(image)")
            Text("\(steps)")
        }
    }
}



struct RecipeDetails_Previews: PreviewProvider {
    static var previews: some View {
        RecipeDetails(recipe:
            Recipe(
                id: "1",
                name: "Latte au potiron",
                imageName: "lattepotiron",
                recipeRating: 3,
                dishCategory: DishCategory.entree,
                prepareTime: 90.0,
                money: 60.0,
                country: Country.us,
                calory: 600,
                ingredients: [
                    Ingredient(quantity: "- 1 cuillère à soupe de", name: " purée de potiron"),
                    Ingredient(quantity: "- 1 cuillère à café de", name: " mélange d'épices Pumpkin spice"),
                    Ingredient(quantity: "- 2 cuillère à soupe de", name: " Cassonade"),
                    Ingredient(quantity: "- 1 cuillère à café de", name: " Arômes de vanille naturel"),
                    Ingredient(quantity: "- 2", name: " Café Expresso non sucré"),
                    Ingredient(quantity: "- De la", name: " chantilly"),
                ],
                steps: [],
                mealType: MealType.petitDejeuner, category: RecipeCat.dessert))
        
    }
}

