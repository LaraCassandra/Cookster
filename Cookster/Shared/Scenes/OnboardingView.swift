//
//  OnboardingView.swift
//  Cookster (iOS)
//
//  Created by Lara Cook on 2021/07/23.
//

import SwiftUI

struct OnboardingView: View {
    var body: some View {
        
        TabView{
            OnboardingCardView(image: "ob1", title: "Welcome to Cookster", description: "A Collection of Cooksister Recipes")
            OnboardingCardView(image: "ob2", title: "All Recipes", description: "See all the recipes carried down the Cook family")
            OnboardingCardView(image: "ob3", title: "Follow Along", description: "Make your own version by following the instructions")
        }
        .tabViewStyle(PageTabViewStyle())
        .padding(.horizontal, 20)
        .padding(.vertical, 20)
        
    }
}

struct OnboardingView_Previews: PreviewProvider {
    static var previews: some View {
        OnboardingView()
    }
}
