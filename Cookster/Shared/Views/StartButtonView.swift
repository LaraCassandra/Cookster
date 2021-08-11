//
//  StartButtonView.swift
//  Cookster (iOS)
//
//  Created by Lara Cook on 2021/07/23.
//

import SwiftUI

struct StartButtonView: View {
    
    @AppStorage("isOnboarding") var isOnboarding: Bool?
    
    var body: some View {
        
        Button(action: {
            print("exit onboarding")
            isOnboarding = false
        }, label: {
            HStack{
                Text("Get Started")
                    .fontWeight(.bold)
                    .font(.system(size: 15))
            }
            .padding(.horizontal, 16)
            .padding(.vertical, 10)
            .frame(width: 250, height: 50, alignment: .center)
            .background(Color("Accent"))
            .accentColor(Color.white)
        })
        
    }
}

struct StartButtonView_Previews: PreviewProvider {
    static var previews: some View {
        StartButtonView()
            .previewLayout(.sizeThatFits)
    }
}
