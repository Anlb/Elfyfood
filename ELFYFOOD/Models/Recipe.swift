//
//  Recipe.swift
//  ELFYFOOD
//
//  Created by Maertens Yann-Christophe on 04/02/2020.
//  Copyright © 2020 Maertens Yann-Christophe. All rights reserved.
//

import Foundation

struct Recipe: Identifiable {
    var id : String
    let name: String
    let imageName: String
    var recipeRating: Int
    let dishCategory: DishCategory
    var prepareTime: Double
    var money: Double
    let country: Country
    let calory: Int
    let ingredients: [Ingredient]
    var steps: [Step]
    let mealType: MealType
    let category: RecipeCat
    var comments: [Comment] = []
}
struct Comment {
    let pseudo: String
    let message: String
}

struct Step: Identifiable {
    var id = UUID()
    let stepNumber: Int
    let stepDescription: String
}


enum DishCategory: String, CaseIterable {
    case none = "Aucun"
    case entree = "Entrée |"
    case plat = "Plat |"
    case dessert = "Dessert |"
}


struct Ingredient: Identifiable {
    var id = UUID()
    let quantity: String
    let name: String
}

enum RecipeCat {
    
    case salade, sandwich, pate, poisson, asiatique, toast, vegetarien, dessert
    
    var imageName: String {
        switch self {
        case .salade:
            return "saladee"
        case .sandwich:
            return "sandwich"
        case .pate:
            return "Pâtes"
        case .poisson:
            return "poisson"
        case .asiatique:
            return "asianfood"
        case .toast:
            return "toasted"
        case .vegetarien:
            return "vegetarien"
        case .dessert:
            return "dessert"
        }
    }
    
    var title: String {
        switch self {
        case .salade:
            return "SALADE"
        case .sandwich:
            return "SANDWICH"
        case .pate:
            return "PATE"
        case .poisson:
            return "POISSON"
        case .asiatique:
            return "ASIATIQUE"
        case .toast:
            return "TOAST"
        case .vegetarien:
            return "VEGETARIEN"
        case .dessert:
            return "DESSERT"
        }
    }
    
}

enum FiltrePreparationTime: CaseIterable {
    case none, short, medium, long, tooLong
    
    init(prepareTime: Double) {
        if prepareTime < 25 {
            self = .short
        } else if prepareTime >= 25 && prepareTime < 50 {
            self = .medium
        } else if prepareTime >= 60 && prepareTime <= 120 {
            self = .long
        } else {
            self = .tooLong
        }
    }
    
    var name: String {
        switch self {
        case .none:
            return "Aucun"
        case .short:
            return "1 à 30 min"
        case .medium:
            return "30 à 60 min"
        case .long:
            return "60 à 120 min"
        case .tooLong:
            return "120+ min"
        }
    }
}

enum FiltreMoney: CaseIterable {
    case none, cheap, average, expensive, veryExpensive
    
    init(FiltreMoneys: Double) {
        if FiltreMoneys < 30 {
            self = .cheap
        } else if FiltreMoneys >= 30 && FiltreMoneys < 60 {
            self = .average
        } else if FiltreMoneys >= 60 && FiltreMoneys <= 120 {
            self = .expensive
        } else {
            self = .veryExpensive
        }
    }
    
    var name: String {
        switch self {
        case .none:
            return "Aucun"
        case .cheap:
            return "0 à 25 €"
        case .average:
            return "25 à 50 €"
        case .expensive:
            return "50 à 100 €"
        case .veryExpensive:
            return "100+ €"
        }
    }
}

struct FiltreRecipe {
    var budg: FiltreMoney = .none
    var countries: Country = .none
    var dishCategory: DishCategory = .none
    var preparationTime: FiltrePreparationTime = .none
}
