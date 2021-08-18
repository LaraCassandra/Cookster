//
//  SettingsView.swift
//  Cookster (iOS)
//
//  Created by Lara Cook on 2021/08/12.
//

import SwiftUI

struct SettingsView: View {
    var body: some View {
        
        NavigationView {
            
            VStack{
                GroupBox(label: HStack{
                    Text("ABOUT")
                }, content: {
                    Text("Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna.")
                        .padding()
                })
                
                GroupBox(label: HStack{
                    Text("Author: Lara Cook")
                }, content:{
                    
                })
                
                GroupBox(label: HStack{
                    Text("Version 1.0.0")
                }, content:{
                    
                })
                
                GroupBox(label: HStack{
                    Text("github.com/LaraCassandra/Cookster")
                }, content:{
                    
                })
                
                Text("CHANGE APPEARANCE")
                
                Spacer()
            }
            .navigationTitle("Settings")
              
        }
        
    }
}

struct SettingsView_Previews: PreviewProvider {
    static var previews: some View {
        SettingsView()
    }
}
