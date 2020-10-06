//
//  ContentView.swift
//  ELFYFOOD
//
//  Created by Maertens Yann-Christophe on 04/02/2020.
//  Copyright © 2020 Maertens Yann-Christophe. All rights reserved.
//

import SwiftUI
struct Filtres: View {
    
    @Binding var filtres: FiltreRecipe
    @Binding var showFilter: Bool
    @State var selectorIn = FiltreRecipe()
    
    @State var dishTypes = DishCategory.allCases
    @State var countries = Country.allCases
    @State var preparationTime = FiltrePreparationTime.allCases
    @State var budgets = FiltreMoney.allCases
    
    @State var rating = 3
    
    var body: some View {
        NavigationView {
            Form {
                Section {
                    HStack {
                        Image(systemName: "arrow.3.trianglepath")
                        Picker("Types de repas", selection: $selectorIn.dishCategory) {
                            ForEach(dishTypes, id: \.self) { dishType in
                                Text(dishType.rawValue)
                            }
                        }
                    }
                    
                    HStack {
                        Image(systemName: "clock")
                        Picker("Types de repas", selection: $selectorIn.preparationTime) {
                            ForEach(preparationTime, id: \.self) { preparationTime in
                                Text(preparationTime.name)
                            }
                        }
                    }
                    HStack {
                        Image(systemName: "money")
                        Picker("Coût", selection: $selectorIn.budg) {
                            ForEach(budgets, id: \.self) { budget in
                                Text(budget.name)
                            }
                        }
                    }
                    HStack {
                        Image(systemName: "flag")
                        Picker("Pays", selection: $selectorIn.countries) {
                            ForEach(countries, id: \.self) { country in
                                Text(country.rawValue)
                            }
                        }
                    }
                    //                    HStack {
                    //                        Image(systemName: "eurosign.circle")
                    //                    Picker("Budget", selection: $selectorIndex2) {
                    //                        ForEach(0 ..< budget.count) { index in
                    //                            Text(self.budget[index]).tag(index)
                    //                        }
                    //                        }
                    //                    }
                    //                    HStack {
                    //                        Image(systemName: "flag")
                    //                    Picker("Pays", selection: $selectorIndex3) {
                    //                    ForEach(0 ..< genres.count) { index in
                    //                            Text(self.genres[index]).tag(index)
                    //                        }
                    //                        }
                    //                    }
                }
                
                Section {
                    HStack {
                        Image(systemName: "star")
                        Text("Note")
                        Spacer()
                        RatingView(rating: $rating)
                    }
                    Button(action: {
                        self.filtres = self.selectorIn
                        self.showFilter = false
                    },  label: {
                        Text("Valider")
                            .padding(13)
                            .frame (minWidth:0, maxWidth: .infinity)
                            .background(Color.green)
                            .foregroundColor(.white)
                            .cornerRadius(16)
                        
                    })
                    
                }
            }
            .navigationBarTitle("Filtres", displayMode: .inline)
        }
    }
}

struct Filtres_Previews: PreviewProvider {
    @State static var filtre = FiltreRecipe()
    @State static var showFilter = true
    static var previews: some View {
        Filtres(filtres: $filtre, showFilter: $showFilter)
    }
}

