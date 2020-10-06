//
//  RecipeSearch.swift
//  ELFYFOOD
//
//  Created by Maertens Yann-Christophe on 11/02/2020.
//  Copyright © 2020 Maertens Yann-Christophe. All rights reserved.
//

import SwiftUI

struct RecipeSearch: View {
    var body: some View {
              VStack() {
                    PostCell(imageName: "\(recipesImages)", postName: "\(recipeNames)")
                    }
                }
}

struct RecipeSearch_Previews: PreviewProvider {
    static var previews: some View {
        RecipeSearch()
    }
}
