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
                    .font(.title3)
                    .foregroundColor(Color("Primary"))
                    .fontWeight(.regular)
                
                Text(recipe.difficulty + " | " + recipe.time)
                    .font(.body)
                    .fontWeight(.light)
            }
            .frame(width: 300, height: 50, alignment: .leading)
    }
}

struct RecipeTile_Previews: PreviewProvider {
    static var previews: some View {
        RecipeTile(recipe: RecipeData[0])
            .previewLayout(.sizeThatFits)
            .padding()
    }
}
