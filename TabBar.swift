//
//  ContentView.swift
//  TAB BAR
//
//  Created by yenbou on 03/02/2020.
//  Copyright © 2020 yenbou. All rights reserved.
//

import SwiftUI

struct TabBar: View {
    
    var body: some View {
        
        
        TabView {
            
            
            Accueil()
                .tabItem {
                    Image(systemName: "house")
                    Text("Accueil") } .tag(1)
            
            
            pagederecherche()
                .tabItem {
                    Image(systemName: "magnifyingglass")
                    Text("recherche") .foregroundColor(.green)} .tag (2)
            
            Favoris()
                .tabItem {
                    Image(systemName: "suit.heart.fill")
                    Text("Favoris") } .tag(3)
            
            pagedeprofil()
                .tabItem {
                    Image(systemName: "person.fill")
                    Text("profil") }.tag(4)
            
            
            
        }.accentColor(.green)
            .edgesIgnoringSafeArea(.top)
    }
}



struct TabBar_Previews: PreviewProvider {
    static var previews: some View {
        TabBar()
    }
}
