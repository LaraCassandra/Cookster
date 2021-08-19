//
//  ContentView.swift
//  Shared
//
//  Created by Lara Cook on 2021/07/23.
//

import SwiftUI

struct ContentView: View {
    
    @State var text = ""
    
    //var recipes: [Recipe] = RecipeData
    @StateObject var recipeViewModel: RecipeViewModel = RecipeViewModel()
    
    var body: some View {
        
        NavigationView{
            
            ScrollView {
                
                SearchBar(text: $text)
                
                Text("SHOWING ALL RECIPES")
                    .font(.system(size: 18, weight: .medium, design: .default))
                    .foregroundColor(Color("Accent"))
                    .padding(5.0)
                
                Rectangle()
                    .foregroundColor(Color("Accent"))
                    .frame(width: 50, height: 2, alignment: .center)
                    .padding(10.0)
                
                ForEach(recipeViewModel.RecipeData.filter({text.isEmpty ? true : $0.name.contains(text)})) { item in
                    NavigationLink(
                        destination: RecipeView(recipes:item),
                        label: {
                            RecipeTile(recipe: item)
                        })
                }
                .padding(10.0)
            }
            .toolbar {
                ToolbarItem(placement: ToolbarItemPlacement
                                .principal){
                    Text("Home")
                        .font(.system(size: 18, weight: .medium, design: .default))
                        .foregroundColor(Color("AccentColor"))
                }
                
                ToolbarItem(placement: ToolbarItemPlacement
                                .navigationBarTrailing){
                        NavigationLink(destination: SettingsView(), label: {Image(systemName: "gear")})
                }
            }
        }
        .accentColor(Color("AccentColor"))
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
