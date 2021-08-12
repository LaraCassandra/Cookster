//
//  RecipeViewModel.swift
//  Cookster (iOS)
//
//  Created by Lara Cook on 2021/08/12.
//

import SwiftUI

class RecipeViewModel: ObservableObject {
    
    @Published var RecipeData: [Recipe] = []
    
    init() {
        getRecipes()
    }
    
    func getRecipes(){
        
        let array: [Recipe] = [
            Recipe(name: "Meg's Pineapple Fluff", time: "2h15", difficulty: "Easy", calories: 120, serves: 6, ingredientsList: ["2 Pineapple jelly boxes", "1 ideal milk tin (in fridge)", "1 crushed pineapple tin (in fridge)", "1 cup of water"], directions: ["1. Whip milk", "2. Add crushed pineapple", "3. Add jellies (both packets mixed, with 1 cup of water only)"]),
            Recipe(name: "Steph's Peppermint Crisp Tart", time: "4h15", difficulty: "Medium", calories: 186, serves: 8, ingredientsList: ["500ml fresh cream", "1 tin caramel", "1 peppermint crisp chocolate", "1 packet of tennis biscuits"], directions: ["1. Whip cream", "2. Add caramel to whipped cream", "3. Layer dish with broken biscuits, cream and grated chocolate, respectively", "Leave to set in fridge at least 4 hours"]),
            Recipe(name: "Cabbage Salad", time: "10min", difficulty: "Easy", calories: 328, serves: 6, ingredientsList: ["4 cups shredded cabbage", "2 carrots shredded", "1 packet ramen noodles, crushed", "2 tablespoons sesame seeds", "1 1/2 tablespoon rice vingar", "1/2 teaspoon sesame oil", "2 tablespoons white sugar", "1/2 teaspoon salt", "1/4 teaspoon black pepper", "1/3 cup olive oil"], directions: ["1. In a small skillet, toast sesame seeds over medium heat until golden brown", "2. In a small bowl mix together vinegar, sesame oil, sugar, salt, pepper and ramen seasoning packet", "3. In a large bowl, mix together cabbage, carrots, and crush ramen noodles. Toss with dressing to coat evenly.", "4. Top with toasted sesame seeds."]),
            Recipe(name: "Asian Beef Mince", time: "30min", difficulty: "Easy", calories: 330, serves: 3, ingredientsList: ["1 tablespoon hoisin sauce", "2 tablespoons oyster sauce", "1 tablespoon Chinese cooking wine (or rice wine, sake, dry sherry)", "2 1/2 tablespoons dark soy sauce", "2 teaspoons sugar", "1/2 teaspoon sesame oil", "1/4 teaspoon white pepper (alt. black papper)", "500g beef lean mince", "2 garlic cloves, crushed", "1 small onion, finely chopped", "1/2 cup spring onion"], directions: ["1. Mix sauce ingredients together and mix until the sugar disolves", "2. Heat oil in a pan, fry garlic and onion until onion is soft and browning", "3. Add in the beef, cook until brown on the outside making sure to break up the mince as you go", "4. Pour the sauce onto the beef and cook until the sauce thickens and completely coats the mince", "5. Stir through the spring onion and garnish with sesame seeds."]),
            Recipe(name: "Chinese Lettuce", time: "5min", difficulty: "Easy", calories: 22, serves: 3, ingredientsList: ["1 whole head of iceberg lettuce, torn up", "1 tablespoon olive oil", "4 tablespoons oyster sauce", "3 tablespoons soy sauce", "1 tablespoon sesame oil"], directions: ["1. Add olive oil in a pot of hot water, add the lettuce and boil for 1-2min", "2. Drain water from the pot", "3. Add soy sauce, oyster sauce and sesame oil, add to taste if needed"]),
            Recipe(name: "Jeff's Banana Pudding", time: "Unknown", difficulty: "Easy", calories: 141, serves: 4, ingredientsList: ["Fresh bananas, chopped", "Cream", "Butter", "Sugar", "Orange liqueur"], directions: ["1. Melt button in a frying pan, while butter is melting let bananas start to cook on the outside edge of the pan", "2. Add sugar and cream", "3. Add orange liqueur"]),
            Recipe(name: "Lara's Pear Tea", time: "1h", difficulty: "Easy", calories: 103, serves: 4, ingredientsList: ["Water", "3 Asian pears, ripened and peeled", "6-8 jujube dates (alt. regular dates)", "Goji berries, measure with your heart", "3-4 rock sugar", "2-3 apricot kernels, peeled"], directions: ["1. Peel and cut pears into quarters and remove the cores", "2. Add all ingredients to a medium size pot with boiling water", "3. Bring to the boil for about 10 minutes, and allow to simmer for 50 additional minutes", "5. Serve hot in Winter, serve cooled in Summer"])]
        
        RecipeData.append(contentsOf: array)
    }
    
}
