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
            
            ScrollView {
                
                HStack {
                
                    Spacer()
                    
                    // TIME TILE
                    VStack {
                        Image(systemName: "clock")
                            .renderingMode(.template)
                            .resizable()
                            .scaledToFit()
                            .frame(width: 25, height: 25, alignment: .center)
                            .foregroundColor(Color("Accent"))
                        
                        Text("\(recipes.time)")
                            .font(.title2)
                            .foregroundColor(Color("Accent"))
                            .fontWeight(.medium)
                    }
                    Spacer()
                    
                    // SERVES TILE
                    VStack {
                        Image(systemName: "person")
                            .renderingMode(.template)
                            .resizable()
                            .scaledToFit()
                            .frame(width: 25, height: 25, alignment: .center)
                            .foregroundColor(Color("Accent"))
                        
                        Text("\(recipes.serves)")
                            .font(.title2)
                            .foregroundColor(Color("Accent"))
                            .fontWeight(.medium)
                    }
                    Spacer()
                    
                    // CALORIES TILE
                    VStack {
                        Image(systemName: "bag")
                            .renderingMode(.template)
                            .resizable()
                            .scaledToFit()
                            .frame(width: 25, height: 25, alignment: .center)
                            .foregroundColor(Color("Accent"))
                        
                        Text("\(recipes.calories)")
                            .font(.title2)
                            .foregroundColor(Color("Accent"))
                            .fontWeight(.medium)
                    }
                    Spacer()
                    
                    // DIFFICULTY TILE
                    VStack {
                        Image(systemName: "bolt.fill")
                            .renderingMode(.template)
                            .resizable()
                            .scaledToFit()
                            .frame(width: 25, height: 25, alignment: .center)
                            .foregroundColor(Color("Accent"))
                        
                        Text("\(recipes.difficulty)")
                            .font(.title2)
                            .foregroundColor(Color("Accent"))
                            .fontWeight(.medium)
                    }
                    Spacer()

                }
                .padding()
                
                Spacer()
                
                Text("INGREDIENTS")
                    .font(.system(size: 18, weight: .medium, design: .default))
                    .foregroundColor(Color("Primary"))
                    .padding(5.0)
                
                Rectangle()
                    .foregroundColor(Color("Primary"))
                    .frame(width: 50, height: 2, alignment: .center)
                    .padding(10.0)
                
                    ForEach(recipes.ingredientsList, id: \.self) { indredient in
                        Text(indredient)
                            .font(.title3)
                            .foregroundColor(Color("AccentColor"))
                            .fontWeight(.light)
                            .padding(.vertical, 3.0)
                            .frame(maxWidth: .infinity, alignment: .leading)
                    }
                    .padding(.horizontal, 50.0)

                Spacer()
                
                Text("DIRECTIONS")
                    .font(.system(size: 18, weight: .medium, design: .default))
                    .foregroundColor(Color("Primary"))
                    .padding(5.0)
                
                Rectangle()
                    .foregroundColor(Color("Primary"))
                    .frame(width: 50, height: 2, alignment: .center)
                    .padding(10.0)
                
                    ForEach(recipes.directions, id: \.self) { direction in
                        Text(direction)
                            .font(.title3)
                            .foregroundColor(Color("AccentColor"))
                            .fontWeight(.light)
                            .padding(.vertical, 4.0)
                            .frame(maxWidth: .infinity, alignment: .leading)
                    }
                    .padding(.horizontal, 50.0)
        
                
            }
            .toolbar {
                ToolbarItem(placement: ToolbarItemPlacement
                                .principal){
                    Text("\(recipes.name)")
                        .font(.system(size: 18, weight: .medium, design: .default))
                        .foregroundColor(Color("AccentColor"))
                }
            }
            
        }
        .accentColor(.black)
        
    }
}

struct RecipeView_Previews: PreviewProvider {
    static var previews: some View {
        RecipeView(recipes: RecipeData[0])
    }
}
