//
//  RecipeView.swift
//  Cookster (iOS)
//
//  Created by Lara Cook on 2021/08/12.
//

import SwiftUI

struct RecipeView: View {
    
    var recipes: Recipe
    
    var body: some View {
    
        NavigationView {
            
            VStack {
                
                HStack {
                
                    // TIME TILE
                    VStack {
                        Image(systemName: "clock")
                        
                        Text("\(recipes.time)")
                    }
                    
                    // SERVES TILE
                    VStack {
                        Image(systemName: "person")
                        
                        Text("\(recipes.serves)")
                    }
                    
                    // CALORIES TILE
                    VStack {
                        Image(systemName: "bag")
                        
                        Text("\(recipes.calories)")
                    }
                    
                    // DIFFICULTY TILE
                    VStack {
                        Image(systemName: "bolt.fill")
                        
                        Text("\(recipes.difficulty)")
                    }

                }
                
                Text("Ingredients")
                
                ScrollView
                {
                    ForEach(recipes.ingredientsList, id: \.self) { indredient in
                        Text(indredient)
                    }
                }
                
                Text("Directions")
                ScrollView {
                    ForEach(recipes.directions, id: \.self) { direction in
                        Text(direction)
                    }
                }
                
            }
            .navigationTitle("\(recipes.name)")
            
        }
        .accentColor(.black)
        
    }
}

struct RecipeView_Previews: PreviewProvider {
    static var previews: some View {
        RecipeView(recipes: RecipeData[0])
    }
}
