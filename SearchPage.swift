//
//  SearchPage.swift
//  ELFYFOOD
//
//  Created by Maertens Yann-Christophe on 07/02/2020.
//  Copyright © 2020 Maertens Yann-Christophe. All rights reserved.
//

import Foundation

import SwiftUI

struct Suggestion: Identifiable {
    let id = UUID()
    let image: String
    let name: String
    let category: RecipeCat
}

struct pagederecherche: View {
    @State private var searchQuery: String = ""
    @State var filtre = FiltreRecipe()
    @State var showFilter = false

    let suggestions = [Suggestion(image: "saladee", name: "SALADE", category: .salade),
                       Suggestion(image: "sandwich", name: "SANDWICH", category: .sandwich),
                       Suggestion(image: "Pâtes", name: "PÂTES", category: .pate),
                       Suggestion(image: "asianfood", name: "ASIATIQUE", category: .asiatique),
                       Suggestion(image: "poisson", name: "POISSON", category: .poisson),
                       Suggestion(image: "vegetarien", name: "VEGETARIEN", category: .vegetarien),
                       Suggestion(image: "toasted", name: "TOAST", category: .toast),
                       Suggestion(image: "dessert", name: "DESSERT", category: .dessert),
    ]
    
    @State var recipes = [Recipe]()

    func filterRecipes() -> [Recipe] {
        if searchQuery.isEmpty && filtre.dishCategory == .none && filtre.countries == .none && filtre.preparationTime == .none && filtre.budg == .none {
            return [Recipe]()
        }

        return recipesMock.filter { recipe in
            return (searchQuery.isEmpty || recipe.name.lowercased().contains(searchQuery.lowercased())) &&
                (filtre.dishCategory == .none || recipe.dishCategory == filtre.dishCategory) &&
                (filtre.countries == .none || recipe.country == filtre.countries) &&
                (filtre.preparationTime == .none || FiltrePreparationTime(prepareTime: recipe.prepareTime) == filtre.preparationTime) &&
                (filtre.budg == .none || FiltreMoney(FiltreMoneys: recipe.prepareTime) == filtre.budg)
        }
    }
    
    var body: some View {
        NavigationView{
            VStack {
                HStack {
                    SearchBarView(searchText: $searchQuery, onCommit: {
                        self.recipes = self.filterRecipes()
                    })
                }.padding([.top])
                if searchQuery.isEmpty && recipes.isEmpty {
                    ScrollView{
                        ForEach(suggestions) { suggestion in
                            NavigationLink(destination:RecipeCategory(category: suggestion.category)) {
                                PostCell(imageName: suggestion.image, postName: suggestion.name)
                            }
                        }
                    }.sheet(isPresented: $showFilter, onDismiss: {
                        self.recipes = self.filterRecipes()
                    }) {
                        Filtres(filtres: self.$filtre, showFilter: self.$showFilter)
                    }
                } else {
                    RecipeGrid(recettes: recipes)
                }
                
                //                    VStack(spacing: 20) {
                //                        NavigationLink(destination:Salade()) {
                //                            PostCell(imageName: "saladee", postName: "SALADE")
                //                        }
                //                        PostCell(imageName: "sandwich", postName: "SANDWICH")
                //                        PostCell(imageName: "Pâtes", postName: "PÂTES")
                //                        PostCell(imageName: "asianfood", postName: "ASIATIQUE")
                //                        PostCell(imageName: "poisson", postName: "POISSON")
                //                        PostCell(imageName: "vegetarien", postName: "VEGETARIEN")
                //                        PostCell(imageName: "toasted", postName: "TOAST")
                //                        PostCell(imageName: "dessert", postName: "DESSERT")
                //                    }
            }.navigationBarTitle("Search", displayMode: .inline).navigationBarItems(trailing: Button(action: {
                self.showFilter = true
            }, label: {
                Image(systemName: "slider.horizontal.3").foregroundColor(.primary).padding([.leading, .vertical])
            }))
            
        }
        
    }
    
}


struct pagederecherche_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            pagederecherche().environment(\.colorScheme, .dark)
            pagederecherche().environment(\.colorScheme, .light)
        }
    }
}
