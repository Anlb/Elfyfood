//
//  Database.swift
//  ELFYFOOD
//
//  Created by Maertens Yann-Christophe on 06/02/2020.
//  Copyright © 2020 Maertens Yann-Christophe. All rights reserved.
//

import Foundation



let mealsMock = [
    Meal(type: MealType.petitDejeuner, imageName: "petit_dejeuner"),
    Meal(type: MealType.dejeuner, imageName: "dejeuner"),
    Meal(type: MealType.diner, imageName: "diner")
]



// Recettes à utiliser pour l'affichage
let recipesMock = [
    
    Recipe(
        id: "1",
        name: "Latte au potiron",
        imageName: "lattepotiron",
        recipeRating: 3,
        dishCategory: DishCategory.entree,
        prepareTime: 90.0,
        money: 60.0,
        country: Country.us,
        calory: 600,
        ingredients: [
            Ingredient(quantity: "1 cuillère à soupe -", name: "Purée de potiron"),
            Ingredient(quantity: "1 cuillère à café -", name: "Mélange d'épices Pumpkin spice"),
            Ingredient(quantity: "2 cuillère à soupe -", name: "Cassonade"),
            Ingredient(quantity: "1 cuillère à café -", name: "Arômes de vanille naturel"),
            Ingredient(quantity: "2", name: "Café Expresso non sucré"),
            Ingredient(quantity: "De la", name: "chantilly"),
        ],
        steps: recipeSteps,
        mealType: MealType.petitDejeuner,
        category: RecipeCat.dessert),
    
    
    Recipe(
        id: "2",
        name: "Soupe de nouille au boeuf",
        imageName: "nouille",
        recipeRating: 3,
        dishCategory: DishCategory.plat,
        prepareTime: 30.0,
        money: 20.0,
        country: Country.coree,
        calory: 1352,
        ingredients: [
            Ingredient(quantity: "300g", name: "de nouilles"),
            Ingredient(quantity: "300g", name: "de boeuf tentre"),
            Ingredient(quantity: "1", name: "carotte"),
            Ingredient(quantity: "1", name: "petit choux pack choï"),
            Ingredient(quantity: "1", name: "oignon"),
            Ingredient(quantity: "1,5l", name: "bouillon de boeuf"),
            Ingredient(quantity: "1", name: "gousse d'ail"),
            Ingredient(quantity: "1cm", name: "de gingembre frais"),
            Ingredient(quantity: "1c.", name: "café de sucre"),
            Ingredient(quantity: "2c.", name: "soupe de sauce de soja"),
    ],
        steps: recipeSteps1,
    mealType: MealType.diner,
    category: RecipeCat.asiatique),
    
    Recipe(
        id: "3",
        name: "Makis saumon avocat",
        imageName: "makis",
        recipeRating: 3,
        dishCategory: DishCategory.entree,
        prepareTime: 25.0,
        money: 20.0,
        country: Country.coree,
        calory: 1354,
        ingredients: [
            Ingredient(quantity: "130g", name: "de riz japonais"),
            Ingredient(quantity: "80g", name: "de saumon frais cru"),
            Ingredient(quantity: "1/4", name: "d'avocat coupé en lamelles"),
            Ingredient(quantity: "2", name: "feuilles d'algue nori"),
            Ingredient(quantity: "1", name: "pate wasabi"),
            Ingredient(quantity: "1", name: "sauce soja"),
            Ingredient(quantity: "1", name: "gingembre"),
            Ingredient(quantity: "1", name: "vinaigre de riz"),
            Ingredient(quantity: "10g", name: "poivre"),
            Ingredient(quantity: "2cc", name: "sucre"),
            
        ],
        steps: recipeSteps2,
        mealType: MealType.dejeuner, category: RecipeCat.asiatique),
            
    Recipe(
        id: "4",
        name: "Crème à la vanille",
        imageName: "cremevanille",
        recipeRating: 3,
        dishCategory: DishCategory.dessert,
        prepareTime: 20.0,
        money: 15.0,
        country: Country.france,
        calory: 641,
        ingredients: [
            Ingredient(quantity: "2 cuillères à café d'", name: "Arôme de vanille"),
            Ingredient(quantity: "50 g ", name: "de Maïzena"),
            Ingredient(quantity: "80 g", name: "de Sucre"),
            Ingredient(quantity: "2", name: "Jaunes d'oeuf"),
            Ingredient(quantity: "1 L", name: "de Lait")
        ],
        steps: recipeSteps3,
        mealType: MealType.dejeuner, category: RecipeCat.dessert),
    
    Recipe(
        id: "5",
        name: "Milkshake au melon",
        imageName: "melon",
        recipeRating: 3,
        dishCategory: DishCategory.dessert,
        prepareTime: 10.0,
        money: 10.0,
        country: Country.france,
        calory: 439,
        ingredients: [
            Ingredient(quantity: "50cl", name: "Lait"),
            Ingredient(quantity: "1", name: "Melon"),
            Ingredient(quantity: "1", name: "Sachet de sucre vanillé"),
            Ingredient(quantity: "3", name: "Cuillères à soupe de sucre"),
            Ingredient(quantity: "6", name: "Glaçons")
        
    ],
    steps: recipeSteps4,
    mealType: MealType.dejeuner, category: RecipeCat.dessert),
    
    Recipe(
        id: "6",
    name: "feuilleté au fromage",
    imageName: "feuilleter",
    recipeRating: 3,
    dishCategory: DishCategory.dessert,
    prepareTime: 30.0,
    money: 10.0,
    country: Country.france,
    calory: 1020,
    ingredients: [
        Ingredient(quantity: "450 g ", name: "de pâte feuilletée"),
        Ingredient(quantity: "250 g ", name: "de Fromage à pâte dure (type emmental, comté, cantal ou mimolette)"),

    ],
    steps: recipeSteps5,
    mealType: MealType.dejeuner, category: RecipeCat.sandwich),
    
    Recipe(
        id: "7",
        name: "Mojito",
        imageName: "mojito",
        recipeRating: 3,
        dishCategory: DishCategory.dessert,
        prepareTime: 10.0,
        money: 30.0,
        country: Country.us,
        calory: 180,
        ingredients: [
            Ingredient(quantity: "4cl", name: "de sirop de sucre de canne"),
            Ingredient(quantity: "12", name: "feuilles de menthe"),
            Ingredient(quantity: "1", name: "citron vert"),
            Ingredient(quantity: "2", name: "eau gazeuse"),
            Ingredient(quantity: "20", name: "glaçons"),
    ],
    steps: recipeSteps6,
    mealType: MealType.dejeuner, category: RecipeCat.dessert),
    
    Recipe(
        id: "8",
        name: "Pâtes au pesto",
        imageName: "pesto",
        recipeRating: 3,
        dishCategory: DishCategory.plat,
        prepareTime: 20.0,
        money: 15.0,
        country: Country.italie,
        calory: 870,
        ingredients: [
            Ingredient(quantity: "1", name: "c à s de conflit de tomates séchées"),
            Ingredient(quantity: "5cl", name: "d'huile d'olive"),
            Ingredient(quantity: "25g", name: "de parmesan râpé"),
            Ingredient(quantity: "50g", name: "de feuilles basilic frais"),
            Ingredient(quantity: "1/2", name: "gousse d'ail"),
            Ingredient(quantity: "25g", name: "de pignons de pin"),
    ],
    steps: recipeSteps7,
    mealType: MealType.dejeuner, category: RecipeCat.pate),
    
    Recipe(
        id: "9",
        name: "Poulet Basquaise",
        imageName: "poulet-1",
        recipeRating: 3,
        dishCategory: DishCategory.plat,
        prepareTime: 55.0,
        money: 25.0,
        country: Country.us,
        calory: 751,
        ingredients: [
             Ingredient(quantity: "1/3", name: "de poulet coupé en 6 morceaux"),
            Ingredient(quantity: "800g", name: "de tomates coeur de boeuf"),
            Ingredient(quantity: "233g", name: "de poivrons rouges et verts corne de boeuf (ou de piments doux)"),
            Ingredient(quantity: "1", name: "gousses d'ail"),
            Ingredient(quantity: "1", name: "oignons"),
            Ingredient(quantity: "100g", name: "de talon de jambon de Bayonne"),
            Ingredient(quantity: "2", name: "piments d'Espelette séchées"),
            Ingredient(quantity: "15cl", name: "de vin blanc"),
            Ingredient(quantity: "300g", name: "de riz blanc")
    ],
    steps: recipeSteps8,
    mealType: MealType.diner, category: RecipeCat.poisson),
    
    Recipe(
        id: "10",
    name: "salade césar",
    imageName: "salade2-1",
    recipeRating: 3,
    dishCategory: DishCategory.entree,
    prepareTime: 15.0,
    money: 20.0,
    country: Country.italie,
    calory: 950,
    ingredients: [
    Ingredient(quantity: "500g", name: "Salade"),
    Ingredient(quantity: "1", name: "blanc de poulet"),
    Ingredient(quantity: "6", name: "cuillères à soupe de mayonnaise"),
    Ingredient(quantity: "1", name: "cuillère à soupe de jus de citron"),
    Ingredient(quantity: "1", name: "cuillère à café de moutarde"),
    Ingredient(quantity: "1", name: "gousse d'ail"),
    ],
    steps: recipeSteps9,
    mealType: MealType.diner, category: RecipeCat.salade),
    
    Recipe(
        id: "11",
    name: "Riz aux courgettes",
    imageName: "riz",
    recipeRating: 3,
    dishCategory: DishCategory.plat,
    prepareTime: 15.0,
    money: 12.0,
    country: Country.italie,
    calory: 1480,
    ingredients: [
        Ingredient(quantity: "240g", name: " de riz basmati"),
        Ingredient(quantity: "25cl", name: "de crème fraiche épaisse"),
        Ingredient(quantity: "2", name: "courgettes"),
        Ingredient(quantity: "1", name: "persil"),
        Ingredient(quantity: "1", name: "basilic"),
        Ingredient(quantity: "1", name: "ciboulette"),

    ],
    steps: recipeSteps10,
    mealType: MealType.diner, category: RecipeCat.asiatique),
    
 Recipe(
    id: "12",
 name: "toast guacamole",
 imageName: "avocat",
 recipeRating: 4,
 dishCategory: DishCategory.plat,
 prepareTime: 05.0,
 money: 15.0,
 country: Country.us,
 calory: 1120,
 ingredients: [
     Ingredient(quantity: "4", name: "Tranches de pain de pain grillé"),
     Ingredient(quantity: "2", name: "Avocats"),
     Ingredient(quantity: "1", name: "Gros oignon"),
     Ingredient(quantity: "1", name: "Citron"),
     ],
     steps: recipeSteps11,
     mealType: MealType.petitDejeuner, category: RecipeCat.toast),

Recipe(
    id: "13",
name: "Soupe froide de courgettes à la noix de coco",
imageName: "courgette",
recipeRating: 4,
dishCategory: DishCategory.plat,
prepareTime: 10.0,
money: 20.0,
country: Country.us,
calory: 1120,
ingredients: [
    Ingredient(quantity: "50 cl ", name: "de Lait demi-écrémé"),
    Ingredient(quantity: "1 cuillère à soupe", name: "d'huile d'olive"),
    Ingredient(quantity: "40 g", name: "de Coco râpée"),
    Ingredient(quantity: "600 g de", name: "Courgettes"),
    Ingredient(quantity: "40 cl ", name: "de Lait de coco"),
    Ingredient(quantity: "0.5 ", name: "Bouquet de coriande"),
    Ingredient(quantity: "2", name: "échalotes"),
    Ingredient(quantity: "5", name: "Glaçons"),
    Ingredient(quantity: "Du Sel ", name: "et du poivre"),
    ],
    steps: recipeSteps12,
    mealType: MealType.diner, category: RecipeCat.vegetarien),

Recipe(
    id: "14",
name: "Sandwich au jambon",
imageName: "san1",
recipeRating: 2,
dishCategory: DishCategory.plat,
prepareTime: 10.0,
money: 10.0,
country: Country.france,
calory: 1123,
ingredients: [
Ingredient(quantity: "1", name: "baguette"),
Ingredient(quantity: "20g", name: "de beurre"),
Ingredient(quantity: "4", name: "tranches de jambon blanc"),
Ingredient(quantity: "quelques", name: "cornichons"),
Ingredient(quantity: "1", name: "tomate"),
Ingredient(quantity: "4", name: "feuilles de laitue"),
],
steps: recipeSteps13,
mealType: MealType.dejeuner, category: RecipeCat.sandwich),

Recipe(
    id: "15",
name: "Sandwich à la dinde fumée",
imageName: "san2",
recipeRating: 5,
dishCategory: DishCategory.plat,
prepareTime: 10.0,
money: 10.0,
country: Country.france,
calory: 945,
ingredients: [
Ingredient(quantity: "8", name: "tranches de pain complet"),
Ingredient(quantity: "4", name: "tranches de dinde fumée"),
Ingredient(quantity: "4", name: "radis"),
Ingredient(quantity: "1/2", name: "bouquet de roquette"),
Ingredient(quantity: "Une", name: "noisette de beurre"),
Ingredient(quantity: "4", name: "feuilles de laitue"),
],
steps: recipeSteps14,
mealType: MealType.dejeuner, category: RecipeCat.sandwich),


Recipe(
    id: "16",
name: "Sandwich au poulet",
imageName: "san3",
recipeRating: 1,
dishCategory: DishCategory.plat,
prepareTime: 15.0,
money: 15.0,
country: Country.france,
calory: 1039,
ingredients: [
Ingredient(quantity: "1", name: "baguette"),
Ingredient(quantity: "4", name: "escalopes de poulet"),
Ingredient(quantity: "1", name: "gousse d'ail piléee"),
Ingredient(quantity: "1", name: "c à s de persil ciselè"),
Ingredient(quantity: "1", name: "c à s d'huile d'olive"),
Ingredient(quantity: "1/2", name: "zeste d'un citron"),
Ingredient(quantity: "Quelques", name: "jeunes pousse de salade"),
],
steps: recipeSteps15,
mealType: MealType.dejeuner, category: RecipeCat.sandwich),


Recipe(
    id: "17",
name: "Spaguetti aux aubergines",
imageName: "pate1",
recipeRating: 2,
dishCategory: DishCategory.plat,
prepareTime: 25.0,
money: 15.0,
country: Country.italie,
calory: 1555,
ingredients: [
Ingredient(quantity: "150g", name: "de spaguetti"),
Ingredient(quantity: "2", name: "aubergine"),
Ingredient(quantity: "2", name: "tomates"),
Ingredient(quantity: "15cl", name: "de concentré de tomates"),
Ingredient(quantity: "250g", name: "de mozzarella"),
Ingredient(quantity: "1", name: "oignon"),
Ingredient(quantity: "2", name: "gousses d'ail"),
Ingredient(quantity: "1", name: "échalotes"),
Ingredient(quantity: "1", name: "c à s de vinaigre"),
Ingredient(quantity: "1", name: "c à s de sucre"),
Ingredient(quantity: "1", name: "feuille de basilic"),
],
steps: recipeSteps16,
mealType: MealType.dejeuner, category: RecipeCat.pate),

Recipe(
    id: "18",
name: "Pâtes tomates basilic",
imageName: "pate2",
recipeRating: 5,
dishCategory: DishCategory.plat,
prepareTime: 25.0,
money: 15.0,
country: Country.italie,
calory: 520,
ingredients: [
Ingredient(quantity: "1kg", name: "de pâtes"),
Ingredient(quantity: "1kg", name: "tomates"),
Ingredient(quantity: "1", name: "gros oignon"),
Ingredient(quantity: "2", name: "gousses ail"),
Ingredient(quantity: "6", name: "c à s d'huile d'olive"),
Ingredient(quantity: "1", name: "bouquet de basilic"),
],
steps: recipeSteps17,
mealType: MealType.dejeuner, category: RecipeCat.pate),

Recipe(
    id: "19",
name: "Gnocchis aux épinards et chèvre",
imageName: "pate3",
recipeRating: 5,
dishCategory: DishCategory.plat,
prepareTime: 35.0,
money: 15.0,
country: Country.italie,
calory: 614,
ingredients: [
Ingredient(quantity: "600g", name: "de gnocchis"),
Ingredient(quantity: "1", name: "bonne poignée d'épinards"),
Ingredient(quantity: "20cl", name: "de créme semi epaisse légère"),
Ingredient(quantity: "1", name: "buche de chèvre"),
Ingredient(quantity: "1", name: "Emmentale râpé"),
],
steps: recipeSteps18,
mealType: MealType.dejeuner, category: RecipeCat.pate),

Recipe(
    id: "20",
name: "Bouillon légumes et boeuf",
imageName: "asie1",
recipeRating: 4,
dishCategory: DishCategory.plat,
prepareTime: 35.0,
money: 15.0,
country: Country.coree,
calory: 1816,
ingredients: [
Ingredient(quantity: "200g", name: "de boeuf"),
Ingredient(quantity: "3", name: "bouillon cubes de boeuf"),
Ingredient(quantity: "2l", name: "d'eau"),
Ingredient(quantity: "1", name: "c à s de maïzena"),
Ingredient(quantity: "1", name: "c à s de sauce de soja"),
Ingredient(quantity: "1", name: "c à s d'huile"),
Ingredient(quantity: "1", name: "c à s de vinaigre"),
Ingredient(quantity: "200g", name: "de nouilles chinoises"),
Ingredient(quantity: "1", name: "carotte"),
Ingredient(quantity: "1", name: "laitue"),
Ingredient(quantity: "1", name: "poireaux"),
],
steps: recipeSteps19,
mealType: MealType.diner, category: RecipeCat.asiatique),


Recipe(
    id: "21",
name: "toasts aux fruits",
imageName: "toasts aux fruits",
recipeRating: 4,
dishCategory: DishCategory.plat,
prepareTime: 5.0,
money: 15.0,
country: Country.france,
calory: 603,
ingredients: [
    Ingredient(quantity: "8", name: "tranches de pain complet"),
    Ingredient(quantity: "1", name: "barquette de philadelphia"),
    Ingredient(quantity: "1", name: "barquette de fraises"),
    Ingredient(quantity: "1", name: "grappe de bananes"),
    Ingredient(quantity: "1", name: "barquette myrtilles"),
    Ingredient(quantity: "1", name: "barquette kiwis"),
    Ingredient(quantity: "100g", name: "de noix de pécan"),
    Ingredient(quantity: "100", name: "de pistaches"),
    Ingredient(quantity: "1", name: "gousse de vanille"),
    ],
steps: recipeSteps20,
mealType: MealType.petitDejeuner, category: RecipeCat.pate),
    
Recipe(
    id: "22",
name: "céréales aux fruits rouges",
imageName: "cereales fruits rouges-1",
recipeRating: 1,
dishCategory: DishCategory.plat,
prepareTime: 5.0,
money: 10.0,
country: Country.france,
calory: 131,
ingredients: [
    Ingredient(quantity: "1", name: "Bol de céréales natures de votre choix"),
    Ingredient(quantity: "5", name: "Myrtilles"),
    Ingredient(quantity: "4", name: " fraises"),
    Ingredient(quantity: "1", name: "Banane"),
    Ingredient(quantity: "6", name: "Raisin sec"),
    Ingredient(quantity: "20cl", name: "De lait"),

    ],
steps: recipeSteps21,
mealType: MealType.petitDejeuner, category: RecipeCat.pate)
]



// Liste des étapes à réutiliser pour chaque recette pour le moment.
// Chaque recette à bien sûr sa propre liste d'étapes
let recipeSteps = [step1, step2, step3, step4, step5, step6, step7 ]

let step1 = Step(stepNumber: 1, stepDescription: "Dans une petite casserole, faites décongeler ou réchauffer votre purée de potiron à feu moyen avec le mélange Pumpkin Pie Spice.")
let step2 = Step(stepNumber: 2, stepDescription: "Ajoutez le sucre et la vanille et remuez bien avec une cuillère en bois.")
let step3 = Step(stepNumber: 3, stepDescription: "Lorsque vous avez un mélange bien homogène, ajoutez le lait et remuez au fouet, attention il ne doit pas bouillir, baissez éventuellement le feu.")
let step4 = Step(stepNumber: 4, stepDescription: "Vous avoir la petite mousse sur le dessus de votre latte, mixez avec un mixeur plongeant ou un blender.")
let step5 = Step(stepNumber: 5, stepDescription: "Préparez vos cafés expresso et versez-les dans les mugs, ajoutez la préparation au lait et rajoutez de la mousse sur le dessus. Saupoudrez de cannelle ou de mélange Pumpkin Pie Spice.")
let step6 = Step(stepNumber: 6, stepDescription: "Si vous êtes encore plus gourmands, recouvrez (à l'aide une poche à douille, c'est plus pratique) votre latte de crème chantilly que vous aurez montée à l'avance et réservée au frais. Saupoudrez alors du mélange d'épices.")
let step7 = Step(stepNumber: 7, stepDescription: "Dégustez rapidement tant que votre latte est bien chaud voire tiède.")


let recipeSteps1 = [step8, step9, step10, step11, step12, step13, step14]

let step8 = Step(stepNumber: 1, stepDescription: "Faites précuire les nouilles , en arrêtant la cuisson 2-3 minutes avant le temps indiqué sur le paquet. Veillez à ce qu'elles restent fermes. Passez les immédiatement sous l'eau froide pour stopper la cuisson et réservez-les.")
let step9 = Step(stepNumber: 2, stepDescription: "Faites bouillir le bouillon de boeuf. Ajoutez 1 cuillère de sauce soja. Conservez au chaud.")
let step10 = Step(stepNumber: 3, stepDescription: "Aiguisez votre couteau pour détailler de très fines lamelles de bœuf tendre. Vous pouvez placer votre morceau de viande au congélateur pour qu'il soir plus ferme et plus facile à émincer.")
let step11 = Step(stepNumber: 4, stepDescription: "Pelez la gousse d'ail et le gingembre frais. Lavez et émincez finement le chou pack choï.")
let step12 = Step(stepNumber: 5, stepDescription: "Faites chauffer dans une poêle 2 cuillères d'huile et le sucre.")
let step13 = Step(stepNumber: 6, stepDescription: "Ajoutez les fines lanières de pack choï et les champignons et faites revenir à feu moyen-vif pendant 5 minutes en remuant.")
let step14 = Step(stepNumber: 7, stepDescription: "Ajoutez ensuite le blanc des oignons, 1 cuillère de sauce soja, l'ail pressé et le gingembre râpé, salez et poivrez. Mélangez quelques minutes.Pour terminer de préparer la soupe au boeuf, réchauffez dans cette préparation les nouilles précuites et égouttées à feu moyen pendant 2 à 3 minutes.")

let recipeSteps2 = [step15, step16, step17, step18, step19, step20]

let step15 = Step(stepNumber: 1, stepDescription: "Débiter le saumon en languettes d'environ 0,5cm de large et 0,5cm d'épaisseur: les mettre à mariner 2 à 3 heures dans un mélange de sucre, sel, poivre.")
let step16 = Step(stepNumber: 2, stepDescription: "découper quelques fines tranches de gingembre et faire macérer dans du vinaigre de riz. Cuire le riz dans de l'eau bouillantee salée pendant 15 à 20mns. Egoutter. Ajouter 1 c à s de vinaigre de riz et réserver. Détailler l'avocat en fines lamelles et réserver.")
let step17 = Step(stepNumber: 3, stepDescription: "Préparer la sauce soja, une pointe de wasabi et le gingembre macéré.")
let step18 = Step(stepNumber:4, stepDescription: "Sur du film alimentaire, poser une algue. A l'aide d'une cuillère déposer le riz au centre et le répartir avec les doigts légèrement humides en gardant une bande d'algue d'environ 1,5cm non couverte.")
let step19 = Step(stepNumber: 5, stepDescription: "Mettre au centre du riz, le poisson et l'avocat puis rouler la feuille d'algue avec le riz autour de la garniture en pressant très fermement")
let step20 = Step(stepNumber: 6, stepDescription: "réserver les makis 1/2h au réfrigérateur avant de les couper avec un couteau bien aiguisé et humide en tronçons d'environ 4 cm de haut.")

let recipeSteps3 = [step21, step22, step23, step24, step25]

let step21 = Step(stepNumber: 1, stepDescription: "Mettre les 3/4 du lait dans une casserole avec la vanille et le sucre et porter à ébullition.")
let step22 = Step(stepNumber: 2, stepDescription: "Pendant ce temps, mélanger la maïzena, les jaunes d'œufs et le reste du lait.")
let step23 = Step(stepNumber: 3, stepDescription: "Ajouter le mélange œufs/maïzena/lait dans la préparation à la vanille.")
let step24 = Step(stepNumber:4, stepDescription: "Dès la reprise de l'ébullition, verser dans des ramequins.")
let step25 = Step(stepNumber: 5, stepDescription: "Mettre les ramequins au frais au moins 2 h avant de déguster.")


let recipeSteps4 = [step26, step27, step28]

let step26 = Step(stepNumber: 1, stepDescription: "Epépinez et épluchez le melon puis coupez-le en petits morceaux.")
let step27 = Step(stepNumber: 2, stepDescription: "Mettez le lait, le sucre vanille, le sucre fin et les glaçons dans un mixeur avec les morceaux de melon et mixer jusqu'à ce que le jus soit mousseux.")
let step28 = Step(stepNumber: 3, stepDescription: "Servez votre milkshake au melon bien frais dans de grands verres avec des pailles.")


let recipeSteps5 = [step29, step30, step31]

let step29 = Step(stepNumber: 1, stepDescription: "Abaissez la pâte feuilletée sur 15x10cm et découpez des bandes de 10 à 15cm de longueur sur 3 à 5 cm de largeur.Recouvrez la plaque de votre four de papier sulfurisé et déposez les rectangles de pâte feuilletée, en veillant à bien les espacer.A l’aide d’un pinceau alimentaire, badigeonnez les rectangles de pâte feuilletée avec l’œuf battu (dorure).")
let step30 = Step(stepNumber: 2, stepDescription: "Coupez le fromage en tranches de 1 cm d'épaisseur, déposez une tranche de fromage sur chaque rectangle de pâte")
let step31 = Step(stepNumber: 3, stepDescription: "Programmez votre four en 3 phases, Cuisson combinée en Chaleur tournante+ :1ère phase de cuisson à 100°C, Humidité : 95% pendant 9 minutes,2ème phase de cuisson à 190 °C, Humidité : 75% pendant 15 minutes, 3ème phase de cuisson à 190°C Humidité : 0 % pendant 7 minutes.Enfournez votre plaque au four.")

let recipeSteps6 = [step32, step33, step34, step35, step36]

let step32 = Step(stepNumber: 1, stepDescription: "Mettez vos glaçons dans un torchon, refermez-le puis, à l'aide d'un rouleau à pâtisserie, pliez la glace.")
let step33 = Step(stepNumber: 2, stepDescription: "vous pouvez encore avoir des morceaux. Versez dans un bol et réserver au congélateur.")
let step34 = Step(stepNumber: 3, stepDescription: "On ne dechire pas les feuilles des menthe car les huiles essentielles se situent sur la surface. Cela permet de ne pas avoir de petits bouts de menthe qui vont bloquer la paille. On les dépose juste au fond du verre.")
let step35 = Step(stepNumber: 4, stepDescription: "Coupez le citron en deux puis chaque demi citron en 6 morceaux. Ajoutez les 6 morceaux de citron dans chaque verre.")
let step36 = Step(stepNumber: 5, stepDescription: "Ajoutez le sirop de sucre de canne. Écrasez le citron avec un pilon special cocktail. Ajoutez la glace pilée en laissant 2cm de libre. Ajoutez le rhum et complétez avec de l'eau gazeuse. Mélangez le cocktail afin que les saveur se mêlent.")

let recipeSteps7 = [step38, step39, step40, step41, step42, step43, step44, step45, step46, step47]

let step37 = Step(stepNumber: 1, stepDescription: "Faire griller les pignons de pin à sec dans une poêle sur feu moyen (attention, ça va vite... quelques minutes suffisent... ne les laissez pas sans surveillance au risque de les retrouver carbonisés ! eh oui, ça m'est déjà arrivé")
let step38 = Step(stepNumber: 2, stepDescription: "Piler la demi-gousse d'ail, laver les feuilles de basilic.")
let step39 = Step(stepNumber: 3, stepDescription: "Mixer les pignons de pin, l'ail, le basilic et le parmesan au robot jusqu'à obtention d'une pâte homogène..")
let step40 = Step(stepNumber: 4, stepDescription: "Transférer la pâte dans un petit saladier, ajouter le confit de tomates séchées.")
let step41 = Step(stepNumber: 5, stepDescription: "faire cuire les spaguettis 10 min dans une grande casserole d'eau bouillante salée. Quand ils sont cuits, les mettre dans une sauteuse assez grande et ajouter le pesto.")
let step42 = Step(stepNumber: 6, stepDescription: "Remuer, sur feu moyen, jusqu'à ce que les pâtes soient bien imprégnées de pesto et servir aussitôt")
let step43 = Step(stepNumber: 7, stepDescription: "Recouvrir les croques, avec ces chapeaux, avec la face épaisse sur le dessus.")
let step44 = Step(stepNumber: 8, stepDescription: "Posez, sur chaque croque, 1 tranche de tomate au centre, et recouvrez de gruyère.")
let step45 = Step(stepNumber: 9, stepDescription: "Laissez gratiner sous le grill, en surveillant pour que les croques ne sèchent pas trop..")
let step46 = Step(stepNumber: 10, stepDescription: "A déguster, avec une petite salade verte, par exemple.")
let step47 = Step(stepNumber: 11, stepDescription: "Une version estivale, du bon vieux croque-monsieur, et un peu moins bourrative que les autres, car sans béchamel..")


let recipeSteps8 = [step48, step49, step50, step51, step52, step53, step54]

let step48 = Step(stepNumber: 1, stepDescription: "Commencez par préparer les tomates. Lavez-les et faites une entaille en forme de croix dans la peau de chaque tomate. Passez-les ensuite à l’eau bouillante 20 secondes, puis plongez les dans l’eau glacée pour les émonder (retirer la peau). Coupez les en quartiers, retirez les pépins, et écrasez à la fourchette (ça devrait former une purée si les tomates sont assez mûres, sinon, mixez légèrement).")
let step49 = Step(stepNumber: 2, stepDescription: "Dans une grande cocotte, faites revenir à feu fort vos morceaux de poulet pour les colorer. Ajoutez le jambon de Bayonne en grosses tranches, puis l’oignon et l’ail et laissez les les sucs se former. Quand votre viande est colorée, retirez le poulet et le jambon. Déglacez avec le vin blanc et laissez réduire. Ajoutez la purée de tomate puis les feuilles de laurier. Coupez vos poivrons en lamelles et versez les dans la sauce avec les piments séchés. Remettez le poulet dans la cocotte dans la sauce, et laissez mijoter jusqu’à ce que la sauce ait bien épaissi et que la viande soit cuite.")
let step50 = Step(stepNumber: 3, stepDescription: "Récupérez vos tranches de jambon et faites les sécher au four à 170 degrés pendant 5 à 10 minutes jusqu’à ce qu’elles soient bien croustillantes.")
let step51 = Step(stepNumber: 4, stepDescription: "Faites cuire votre riz à l’eau bouillante.")
let step52 = Step(stepNumber: 5, stepDescription: "Mettez du riz au centre d’une assiette. Ajoutez autour de la sauce. Déposez votre viande sur la sauce et le riz, puis ajoutez les poivrons et les piments par dessus. Cassez vos chips de jambon et déposez en quelques unes sur l’assiette.")
let step53 = Step(stepNumber: 6, stepDescription: "Et voilà vous pouvez kiffer votre voyage en terre basque. L’avantage de ce plat c’est qu’il peut se faire en grandes quantités, et même se congeler éventuellement !")
let step54 = Step(stepNumber: 7, stepDescription: "Bien sûr, ne lésinez pas sur la sauce, sur le piment d’Espelette et sur le jambon de Bayonne ! Une recette de poulet basquaise vraiment traditionnelle, ça se mérite, et c’est avant tout une recette gourmande. Donc si vous êtes radins, ça ne sera pas un vrai bon poulet basquaise ! Soyez généreux !")


let recipeSteps9 = [step55, step56, step57, step58]

let step55 = Step(stepNumber: 1, stepDescription: "Une heure avant le repas, mélanger tous les ingrédients de la sauce. Filmer et laisser reposer une heure au réfrigérateur.")
let step56 = Step(stepNumber: 2, stepDescription: "Couper les tranches de pain en cube. Faire revenir les croûtons dans un filet d'huile d'olive pendant 2 minutes et laisser refroidir.")
let step57 = Step(stepNumber: 3, stepDescription: "Couper le poulet en petits morceaux et faire cuire dans une poêle anti-adhésive sans matière grasse. Faire dorer et laisser refroidir.")
let step58 = Step(stepNumber: 4, stepDescription: "Déchirer la laitue et petits morceaux. Enfin, n'oubliez pas de dresser dans l'ordre : salade, poulet, croûtons et sauce César.")



let recipeSteps10 = [step59, step60, step61, step62, step63, step64]

let step59 = Step(stepNumber: 1, stepDescription: "Faire cuire le riz dans une grande casserole d'eau bouillante salée 10 minutes.")
let step60 = Step(stepNumber: 2, stepDescription: "Pendant le temps de cuisson, lavez et coupez les bouts des courgettes, râpez-les avec une râpe à gros trous.")
let step61 = Step(stepNumber: 3, stepDescription: "Egouttez le riz.")
let step62 = Step(stepNumber: 4, stepDescription: "Faites fondre la crème fraiche dans une grande poêle, ajoutez le riz égoutté et les courgettes râpée, mélangez bien, salez, poivrez.")
let step63 = Step(stepNumber: 5, stepDescription: "Laissez réchauffer 2 minutes à feu vif en remuant tout le temps, les courgettes doivent rester croquantes.")
let step64 = Step(stepNumber: 6, stepDescription: "Servir chaud en saupoudrant des herbes hachées de votre choix.")


let recipeSteps11 = [step65, step66, step67]

let step65 = Step(stepNumber: 1, stepDescription: "Émincer l'oignon")
let step66 = Step(stepNumber: 2, stepDescription: "Retirez la chair des avocats et mettre-la dans un bol à mixeur. Versez-y l'oignon, le jus de citron, poivre. Mixez jusqu'à obtention d'une purée fine")
let step67 = Step(stepNumber: 3, stepDescription: "Faites griller les tranches de pain et tartinez-les de guacamole.")


let recipeSteps12 = [step68, step69, step70, step71, step72, step73, step74]

let step68 = Step(stepNumber: 1, stepDescription: "Rincez les courgettes et épluchez les échalotes.")
let step69 = Step(stepNumber: 2, stepDescription: "Coupez le tout grossièrement.")
let step70 = Step(stepNumber: 3, stepDescription: "Faites chauffer l'huile d'olive dans une casserole. Faites-y revenir les légumes pendant 5 minutes.")
let step71 = Step(stepNumber:4, stepDescription: "Versez ensuite le lait Lactel Bio et le lait de coco. Ajoutez la moitié du bouquet de coriandre et laisser frémir 15 minutes. Salez, poivrez.")
let step72 = Step(stepNumber: 5, stepDescription: "Mixez pour obtenir une texture bien lisse et laissez complètement refroidir.")
let step73 = Step(stepNumber: 6, stepDescription: "Ajoutez les glaçons et mixez de nouveau. Versez directement dans des grands verres et, parsemez de coriandre ciselée et de noix de coco râpée.")
let step74 = Step(stepNumber: 7, stepDescription: "Dégustez sans attendre ces soupes froides aux courgettes et noix de coco")

let recipeSteps13 = [step75, step76, step77]

let step75 = Step(stepNumber: 1, stepDescription: "Coupez la baguette en deux et fendez-la dans la longueur.")
let step76 = Step(stepNumber: 2, stepDescription: "Lavez la tomate et coupez-la en rondelles.")
let step77 = Step(stepNumber: 3, stepDescription: "Enduisez de beurre les 2 côtés, puis placez la salade, des rondelles de tomate et le jambon blanc, refermez et dégustez en pleine nature, au bord de l'eau.")


let recipeSteps14 = [step78, step79]

let step78 = Step(stepNumber: 1, stepDescription: "Toastez légèrement les tranches de pain au grille-pain. Beurrez un côté du pain. Lavez les radis et coupez-les en fines rondelles. Lavez et essorez la roquette.")
let step79 = Step(stepNumber: 2, stepDescription: "Répartissez les rondelles de radis sur la moitié du pain. Salez et poivrez. Recouvrez avec les tranches de jambon et la roquette. Refermez les sandwiches avec les tranches de pain restantes, coupez-les en deux en diagonale et servez.")

let recipeSteps15 = [step80, step81, step82, step83, step84, step85]

let step80 = Step(stepNumber: 1, stepDescription: "A l'avance, préparer la marinade et faire mariner les 4 escalopes de poulet pendant au moins 15 minutes.")
let step81 = Step(stepNumber: 2, stepDescription: "Puis faire griller à feu vis les escacalopes de poulet marinées dans une poêle anti-adhésive. Laver et égoutter les pousses de salade.")
let step82 = Step(stepNumber: 3, stepDescription: "Couper la baguettes en 4 parts égales. Ouvrir chaque part en deux.")
let step83 = Step(stepNumber: 4, stepDescription: "Déposer les tomates séchèes sur les 4 tranches inférieures.")
let step84 = Step(stepNumber: 5, stepDescription: "Recouvrir avec 1 escalope de poulet.")
let step85 = Step(stepNumber: 6, stepDescription: "Recouvrir de quelques feuilles de salade et refermer le sandwich.")

let recipeSteps16 = [step86, step87, step88, step89, step90, step91, step92]

let step86 = Step(stepNumber: 1, stepDescription: "Coupez les aubergines (en cube, de préférence), faites-les dégorger dans un bol avec le sel pendant 30 min.")
let step87 = Step(stepNumber: 2, stepDescription: "Faites revenir dans l'huile d'olive l'oignon émincé, puis l'ail et les échalotes hachés, puis les aubergines.")
let step88 = Step(stepNumber: 3, stepDescription: "Ajoutez les tomates coupées en cubes, le concentré de tomates.")
let step89 = Step(stepNumber: 4, stepDescription: "A la fin de la cuisson, ajoutez finalement le vinaigre, le sucre, le basilic coupé finement et la mozzarella.")
let step90 = Step(stepNumber: 5, stepDescription: "Laissez revenir jusqu'à ce que la mozzarella fonde légèrement. Ajustez l'assaisonement.")
let step91 = Step(stepNumber: 6, stepDescription: "Pendant ce temps, faites cuire les pâtes al dente.")
let step92 = Step(stepNumber: 7, stepDescription: "Mélangez les pâtes avec les légumes, décorez avec quelques feuilles de basilic.")

let recipeSteps17 = [step93, step94, step95, step96, step97]
let step93 = Step(stepNumber: 1, stepDescription: "Épluchez l'ail et l'oignon puis hachez-les.")
let step94 = Step(stepNumber: 2, stepDescription: "Faites bouillir de l'eau dans une grande casserole et ébouillantez-y les tomates 2 min. Égouttez-les et passez-les sous l’eau froide avant de les peler et de les couper en morceaux.")
let step95 = Step(stepNumber: 3, stepDescription: "Faites chauffer l'huile d’olive dans une cocotte. Faites-y revenir l'oignon haché quelques min. Ajoutez les tomates, l’ail, du sel et du poivre. Mélangez et laissez cuire à feu doux durant 30 min à couvert.")
let step96 = Step(stepNumber: 4, stepDescription: "Pendant ce temps, rincez, effeuillez et ciselez finement le basilic.")
let step97 = Step(stepNumber: 5, stepDescription: "Mixez la sauce tomate légèrement, ajoutez le basilic et mélangez avant de servir.")

let recipeSteps18 = [step98, step99, step100, step101, step102]
let step98 = Step(stepNumber: 1, stepDescription: "Préchauffer le four à 180°C (thermostat 6).")
let step99 = Step(stepNumber: 2, stepDescription: "Dans une casserole, chauffer la crème à feu moyen, le/les chèvre(s) et les épinards coupés grossièrement (prendre soin de les laver avant pour éviter le reste de terre). Couvrir et attendre que le chèvre soit entièrement fondu.")
let step100 = Step(stepNumber: 3, stepDescription: "Faire cuire les gnocchis dans une casserole d'eau salée. Les égoutter et les répartir dans un plat allant au four.")
let step101 = Step(stepNumber: 4, stepDescription: "Mixer le mélange crème, épinard, chèvre et le répartir sur les gnocchis.")
let step102 = Step(stepNumber: 5, stepDescription: "Parsemer d'emmental râper et faire gratiner au four 25 min environ.")

let recipeSteps19 = [step103, step104, step105, step106, step107]
let step103 = Step(stepNumber: 1, stepDescription: "Couper le viande, carotte, poireaux et laitue en petites lamelles.")
let step104 = Step(stepNumber: 2, stepDescription: "Faire macérer les lamelles dans la sauce concoctée avec la farine, le soja, l'huile et le vinaigre (de quelques minutes à quelques heures).")
let step105 = Step(stepNumber: 3, stepDescription: "Ajouter ensuite les épices selon les goûts.")
let step106 = Step(stepNumber: 4, stepDescription: "Faire bouillir l'eau avec les cubes. Mettre la viande et sa sauce dedans pendant 10 (boeuf) à 15 (poulet) min. Laisser cuire à petits bouillons.")
let step107 = Step(stepNumber: 5, stepDescription: "Ajouter les nouilles chinoises directement, et laisser cuire 4 à 5 min à feu vif. Servir dans des bols avec des baguettes (sans cuillère!), c'est plus rigolo.")

let recipeNames: [String] = ["SALADE", "SANDWICH", "PATES", "ASIATIQUE", "POISSON", "VEGETARIEN", "TOAST", "DESSERT"]
let recipesImages: [String] = ["saladee","sandwich","Pâtes", "asianfood", "poisson", "vegetarien", "toasted", "dessert"]

let recipeSteps20 = [step108, step109, step110, step111, step112]
let step108 = Step(stepNumber: 1, stepDescription: "Couper le viande, carotte, poireaux et laitue en petites lamelles.")
let step109 = Step(stepNumber: 2, stepDescription: "Faire macérer les lamelles dans la sauce concoctée avec la farine, le soja, l'huile et le vinaigre (de quelques minutes à quelques heures).")
let step110 = Step(stepNumber: 3, stepDescription: "Ajouter ensuite les épices selon les goûts.")
let step111 = Step(stepNumber: 4, stepDescription: "Faire bouillir l'eau avec les cubes. Mettre la viande et sa sauce dedans pendant 10 (boeuf) à 15 (poulet) min. Laisser cuire à petits bouillons.")
let step112 = Step(stepNumber: 5, stepDescription: "Ajouter les nouilles chinoises directement, et laisser cuire 4 à 5 min à feu vif. Servir dans des bols avec des baguettes (sans cuillère!), c'est plus rigolo.")

let recipeSteps21 = [step113, step114, step115, step116, step117]
let step113 = Step(stepNumber: 1, stepDescription: "Couper le viande, carotte, poireaux et laitue en petites lamelles.")
let step114 = Step(stepNumber: 2, stepDescription: "Faire macérer les lamelles dans la sauce concoctée avec la farine, le soja, l'huile et le vinaigre (de quelques minutes à quelques heures).")
let step115 = Step(stepNumber: 3, stepDescription: "Ajouter ensuite les épices selon les goûts.")
let step116 = Step(stepNumber: 4, stepDescription: "Faire bouillir l'eau avec les cubes. Mettre la viande et sa sauce dedans pendant 10 (boeuf) à 15 (poulet) min. Laisser cuire à petits bouillons.")
let step117 = Step(stepNumber: 5, stepDescription: "Ajouter les nouilles chinoises directement, et laisser cuire 4 à 5 min à feu vif. Servir dans des bols avec des baguettes (sans cuillère!), c'est plus rigolo.")
