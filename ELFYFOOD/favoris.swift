//
//  ContentView.swift
//  favoris
//
//  Created by Pascaline Thuilliez on 04/02/2020.
//  Copyright © 2020 Pascaline Thuilliez. All rights reserved.
//

import SwiftUI

struct Recette: Identifiable {
    let id = UUID()
    let image: String
    let name: String
}

struct Favoris: View {
    
    let recettes = [
        Recette(image: "potiron", name: "Potiron latte aux épices"),
        Recette(image: "champignons", name: "Champignons farcis aux légumes"),
        Recette(image: "concombres", name: "Concombres aux herbes"),
        Recette(image: "creme", name: "Crème à la vanille"),
        Recette(image: "milkshake", name: "Milkshake au melon"),
        Recette(image: "pain depice", name: "Pain d'épice"),
        Recette(image: "clafoutis", name: "Clafoutis aux raisins"),
        Recette(image: "croque monsieur", name: "Croque monsieur aux legumes"),
        Recette(image: "poulet", name: "Poulet Basquaise"),
        Recette(image: "salade cesar", name: "Salade césar"),
        Recette(image: "risotto", name: "Risotto de légumes aux crevettes"),
        Recette(image: "pain grille", name: "Pain grillé aux amandes et aux fraises"),
        Recette(image: "soupe", name: "Soupe froide de courgettes à la noix de coco")]
    
    var body: some View {
        NavigationView {
        QGrid(recettes,
              columns: 2,
              vSpacing: 30,
              hSpacing: 20,
              vPadding: 20,
              hPadding: 20
        ) { recette in
            plan(recette: recette)
            }.navigationBarTitle("Favoris")
        }
    }

}
struct plan : View {
    var recette: Recette
    
    var body: some View {
        
        VStack {
            Image(recette.image)
                .resizable().frame(width : 165, height: 165 )
                .scaledToFit()
                .padding([.horizontal, .top], 7)
            Text(recette.name).lineLimit(1)
        }
    }
}

struct Favoris_Previews: PreviewProvider {
    static var previews: some View {
        Favoris()
    }
}
