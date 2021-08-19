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
                    .foregroundColor(Color("Primary2"))
                    .fontWeight(.bold)
                
                Text(recipe.difficulty + " | " + recipe.time)
                    .font(.body)
                    .fontWeight(.medium)
                    .foregroundColor(.white)
            }
            .frame(width: 310, height: 90, alignment: .leading)
            .padding(.vertical, 20.0)
            .padding(.leading, 40.0)
            .padding(.trailing, 5.0)
            .cornerRadius(20)
            .background(Color("Primary"))
        
    }
}

struct RecipeTile_Previews: PreviewProvider {
    static var previews: some View {
        RecipeTile(recipe: RecipeData[0])
            .previewLayout(.sizeThatFits)
            .padding()
    }
}
