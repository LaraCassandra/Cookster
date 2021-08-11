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
        
        VStack(spacing: 20){
            Text("HOME")
                .font(.title2)
                .fontWeight(.medium)
                .foregroundColor(Color("Main"))
                .padding(.vertical, 20)
            
            ZStack {
                Rectangle()
                    .foregroundColor(Color("Lightgrey"))
                HStack {
                    TextField("Search", text: $search)
                    Spacer()
                    Image(systemName: "magnifyingglass")
                }
                .foregroundColor(.black)
                .padding(.leading, 10)
                .padding(.trailing, 10)
            }
            .frame(height: 40)
            .cornerRadius(13)
            .padding()
        }

        List {
            ForEach(recipes.shuffled()) { item in
                RecipeTile(recipe: item)
                    .padding(.vertical, 10)
                    .padding(.horizontal, 10)
                    .cornerRadius(10)
                    .border(Color("Main"), width: 1)
            }
        }
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
