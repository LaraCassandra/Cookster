//
//  ContentView.swift
//  Shared
//
//  Created by Lara Cook on 2021/07/23.
//

import SwiftUI

struct ContentView: View {
    
    @State var search = ""
    
    var recipes: [Recipe] = RecipeData
    var body: some View {
        
        NavigationView{

            List {
                ForEach(recipes.shuffled()) { item in
                    NavigationLink(
                        destination: RecipeView(recipes:item),
                        label: {
                            RecipeTile(recipe: item)
                                .padding(.vertical, 10)
                                .padding(.horizontal, 10)
                                .cornerRadius(10)
                                .border(Color("Main"), width: 1)
                        })
                    
                }
            }
            .toolbar {
                ToolbarItem(placement: ToolbarItemPlacement
                                .principal){
                    Text("HOME")
                        .font(.system(size: 18, weight: .medium, design: .default))
                        .foregroundColor(.black)
                }
                
                ToolbarItem(placement: ToolbarItemPlacement
                                .navigationBarTrailing){
                    Button(action: {
                        NavigationLink (
                        
                            destination: /*@START_MENU_TOKEN@*/Text("Destination")/*@END_MENU_TOKEN@*/,
                            label: )
                    }, label: {
                        Image(systemName: "gear")
                            .foregroundColor(.black)
                    })
                }
            }
        }
        .accentColor(.black)
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
