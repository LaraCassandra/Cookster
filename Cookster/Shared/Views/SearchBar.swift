//
//  SearchBar.swift
//  Cookster (iOS)
//
//  Created by Lara Cook on 2021/08/19.
//

import SwiftUI

struct SearchBar: View {
    
    @Binding var text: String
    @State private var isEditing = false
    
    var body: some View {
        
        HStack {
            TextField("Search recipe...", text: $text)
                .padding(10)
                .padding(.horizontal, 10)
                .background(Color("Lightgrey"))
                .foregroundColor(Color("AccentColor"))
                .cornerRadius(50)
                }
        .padding(.horizontal, 30)
        .padding(.vertical, 10)
        
    }
}
