//
//  Tabbar.swift
//  favoris
//
//  Created by Pascaline Thuilliez on 04/02/2020.
//  Copyright © 2020 Pascaline Thuilliez. All rights reserved.
//

import SwiftUI

struct Tabbar: View {
    
    var body: some View {
        
        TabView {
            
            
            Text("Accueil")
                .tabItem {
                    Image(systemName: "house")
                    Text("Accueil") } .tag(1)
            
            Text("Recherche")
                .tabItem {
                    Image(systemName: "magnifyingglass")
                    Text("Recherche") .foregroundColor(.green)}.tag(2)
            
            Favoris()
                .tabItem {
                    Image(systemName: "suit.heart.fill")
                    Text("Favoris") } .tag(3)
            
            Text("Mon profil")
                .tabItem {
                    Image(systemName: "person.fill")
                    Text("Profil") } .tag(4)
        }.accentColor(.green)
        
    }
}

struct Tabbar_Previews: PreviewProvider {
    static var previews: some View {
        Tabbar()
    }
}
