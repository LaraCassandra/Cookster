//
//  CooksterApp.swift
//  Shared
//
//  Created by Lara Cook on 2021/07/23.
//

import SwiftUI

@main
struct CooksterApp: App {
    
    //SET DEFAULT APPSTORAGE TO TRUE
    @AppStorage("isOnboarding") var isOnboarding: Bool = true
    
    var body: some Scene {
        WindowGroup {
            if isOnboarding {
                OnboardingView()
            }
            else {
                ContentView()
            }
        }
    }
}
