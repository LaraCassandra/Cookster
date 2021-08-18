//
//  RecipeTile.swift
//  Cookster (iOS)
//
//  Created by Lara Cook on 2021/08/02.
//

import SwiftUI

struct RecipeTile: View {
    
    var recipe: Recipe
    
    var body: some View {
            VStack(alignment: .leading, spacing: 5) {
                Text(recipe.name)
                    .font(.title2)
                    .foregroundColor(.white)
                    .fontWeight(.bold)
                
                Text(recipe.difficulty + " | " + recipe.time)
                    .font(.body)
                    .fontWeight(.regular)
                    .foregroundColor(.white)
            }
            .frame(width: 350, height: 120, alignment: .leading)
            .padding(.vertical, 20)
            .padding(.leading, 15)
            .padding(.trailing, 5)
            .background(Color("Accent"))
        
    }
}

struct RecipeTile_Previews: PreviewProvider {
    static var previews: some View {
        RecipeTile(recipe: RecipeData[0])
            .previewLayout(.sizeThatFits)
            .padding()
    }
}
