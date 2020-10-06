//
//  ContentView.swift
//  form section
//
//  Created by saliha hadjamar on 03/02/2020.
//  Copyright © 2020 saliha hadjamar. All rights reserved.
//

import SwiftUI

struct Accueil: View {
    
    var body: some View {
        NavigationView {
            ScrollView{
                Image("logo").padding( 50)
                ForEach(mealsMock, id: \.id) { meal in
                    MealRow(meal: meal)
                }

            }.navigationBarTitle("", displayMode: .inline).navigationBarHidden(true)
        }
    }
}

struct MealRow: View {
    
    let meal: Meal
    
    var body: some View  {
        NavigationLink(destination: MealSuggestion(meal: meal)) {
            VStack {

                POSTCELL(imageName: meal.imageName, postName: meal.type.rawValue)


                
                Spacer()
                
            }
        }
    }
}


struct Accueuil_Previews: PreviewProvider {
    static var previews: some View {
        Accueil()
    }
}
