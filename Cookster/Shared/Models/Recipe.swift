//
//  Recipe.swift
//  Cookster (iOS)
//
//  Created by Lara Cook on 2021/07/23.
//

import SwiftUI

struct Recipe: Identifiable {
    var id = UUID()
    var name: String
    var time: String
    var difficulty: String
    var calories: Int
    var serves: Int
    var ingredientsList: [String]
    var directions: [String]
}
