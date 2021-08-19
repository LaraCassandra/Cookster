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
    
    @AppStorage("isDarkMode") var isDarkMode: Bool = false
    
    var body: some Scene {
        WindowGroup {
            if isOnboarding {
                OnboardingView()
                    .preferredColorScheme(isDarkMode ? .dark : .light)
            }
            else {
                ContentView()
                    .preferredColorScheme(isDarkMode ? .dark : .light)
            }
        }
    }
}
