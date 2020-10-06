//
//  RecipeDetails2.swift
//  ELFYFOOD
//
//  Created by Maertens Yann-Christophe on 05/02/2020.
//  Copyright © 2020 Maertens Yann-Christophe. All rights reserved.
//

import SwiftUI

struct RecipeDetails2: View {
    var body: some View {
        Spacer()
         Text("\(recipe.preparationTitle)")
             .bold()
             .font(.system(size: 25))
             //        prepa(image: "1.circle", steps: "\(recipe.preparation)")
             .font(.system(size: 18))
         Spacer()
         HStack {
             Text("\(recipe.userRating)")
                 .bold()
                 .font(.system(size: 22))
             RatingView(rating: $rating)
    }
}

struct RecipeDetails2_Previews: PreviewProvider {
    static var previews: some View {
        RecipeDetails2()
    }
}
