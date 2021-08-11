//
//  OnboardingCardView.swift
//  Cookster (iOS)
//
//  Created by Lara Cook on 2021/07/23.
//

import SwiftUI

struct OnboardingCardView: View {
    
    var image: String
    var title: String
    var description: String
    
    var body: some View {
        
        VStack (spacing: 20){
            
            // ONBOARDING IMAGE
            Image(image)
                .renderingMode(.original)
                .resizable()
                .scaledToFit()
                .frame(width: 300, height: 300, alignment: .center)
            
            Text(title)
                .font(.title)
                .foregroundColor(Color("Primary"))
                .fontWeight(.heavy)
                .multilineTextAlignment(.center)
                .padding(.horizontal, 16)
                .frame(maxWidth: 400)
            
            Text(description)
                .font(.title3)
                .foregroundColor(Color("Main"))
                .fontWeight(.light)
                .multilineTextAlignment(.center)
                .fixedSize(horizontal: false, vertical: true)
                .frame(maxWidth: 480, maxHeight: 100)
            
            StartButtonView()
                .padding(.vertical, 20)
            
        }
        .frame(minWidth: 0,maxWidth: .infinity, minHeight: 0, maxHeight: .init(), alignment: .center)
        .background(Color.white)
        
    }
}

struct OnboardingCardView_Previews: PreviewProvider {
    static var previews: some View {
        OnboardingCardView(image: "note.text", title: "Welcome to Cookster", description: "A collection of Cooksister Recipes.")
            .previewLayout(.fixed(width:320, height: 640))
    }
}
