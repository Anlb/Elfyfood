//
//  ContentView.swift
//  page de recherche
//
//  Created by yenbou on 03/02/2020.
//  Copyright © 2020 yenbou. All rights reserved.
//

import SwiftUI

struct Suggestion: Identifiable {
    let id = UUID()
    let image: String
    let name: String
}

struct pagederecherche: View {
    @State private var searchQuery: String = ""
    let suggestions = [Suggestion(image: "saladee", name: "SALADE"),
                       Suggestion(image: "sandwich", name: "SANDWICH"),
                       Suggestion(image: "Pâtes", name: "PÂTES"),
                       Suggestion(image: "asianfood", name: "ASIATIQUE"),
                       Suggestion(image: "poisson", name: "POISSON"),
                       Suggestion(image: "vegetarien", name: "VEGETARIEN"),
                       Suggestion(image: "toasted", name: "TOAST"),
                       Suggestion(image: "dessert", name: "DESSERT"),
    ]
    
    var suggestionFiltered: [Suggestion] {
        return suggestions.filter { suggestion in
            return suggestion.name.lowercased().contains(searchQuery) || searchQuery.isEmpty
        }
    }

    var body: some View {
        NavigationView{
            VStack {
                HStack {
                    SearchBarView(searchText: $searchQuery)
                }.padding([.top])
                ScrollView{
                    ForEach(suggestionFiltered) { suggestion in
                        NavigationLink(destination:Salade()) {
                            PostCell(imageName: suggestion.image, postName: suggestion.name)
                        }
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
                }.navigationBarTitle("Search", displayMode: .inline).navigationBarItems(trailing: NavigationLink(destination: Filtres()) {
                    Image(systemName: "slider.horizontal.3").foregroundColor(.primary)
                })
                
            }
            
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



