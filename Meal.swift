//
//  Meal.swift
//  ELFYFOOD
//
//  Created by Maertens Yann-Christophe on 07/02/2020.
//  Copyright © 2020 Maertens Yann-Christophe. All rights reserved.
//

import Foundation

struct Meal: Identifiable {
    var id = UUID()
    let type: MealType
    let imageName: String
}
