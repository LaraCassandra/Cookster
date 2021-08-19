//
//  SettingsView.swift
//  Cookster (iOS)
//
//  Created by Lara Cook on 2021/08/12.
//

import SwiftUI

struct SettingsView: View {
    
    @AppStorage ("isDarkMode") var isDarkMode = false
    
    var body: some View {
        
        NavigationView {
            
            ScrollView {
                
                Text("ABOUT")
                    .font(.system(size: 18, weight: .medium, design: .default))
                    .foregroundColor(Color("Primary"))
                
                Rectangle()
                    .foregroundColor(Color("Primary"))
                    .frame(width: 50, height: 2, alignment: .center)
                    .padding(10.0)
                
                GroupBox(label: HStack{
                    Text("Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna.")
                        .font(.title3)
                        .foregroundColor(Color("Main"))
                        .fontWeight(.light)
                        .multilineTextAlignment(.center)
                        .fixedSize(horizontal: false, vertical: true)
                        .frame(maxWidth: 480, maxHeight: 100)
                        .padding()
                }, content: {
                    
                }).padding(.vertical, 5)
                .padding(.horizontal, 10)
                
                GroupBox(label: HStack{
                    Text("Author: Lara Cook")
                }, content:{
                    
                }).padding(.vertical, 5)
                .padding(.horizontal, 10)
                
                GroupBox(label: HStack{
                    Text("Version 1.0.0")
                }, content:{
                    
                }).padding(.vertical, 5)
                .padding(.horizontal, 10)
                
                GroupBox() { HStack{
                    Link(destination: URL(string: "https://github.com/LaraCassandra/Cookster")!, label: { Text("Github Link").fontWeight(.bold)})
                    Image(systemName: "arrow.up.right.square")
                    Spacer()
                }
                }.padding(.vertical, 5)
                .padding(.horizontal, 10)
                
                Text("CHANGE APPEARANCE")
                    .font(.system(size: 18, weight: .medium, design: .default))
                    .foregroundColor(Color("Primary"))
                    .padding(5.0)
                
                Rectangle()
                    .foregroundColor(Color("Primary"))
                    .frame(width: 50, height: 2, alignment: .center)
                    .padding(10.0)
                
                Picker("Mode", selection: $isDarkMode){
                    Text("Light").tag(false)
                    Text("Dark").tag(true)
                }
                .pickerStyle(SegmentedPickerStyle())
                .padding(.vertical, 5)
                .padding(.horizontal, 10)
                
            }
            .toolbar {
                ToolbarItem(placement: ToolbarItemPlacement
                                .principal){
                    Text("SETTINGS")
                        .font(.system(size: 18, weight: .medium, design: .default))
                        .foregroundColor(Color("AccentColor"))
                }
            }
        }
        .accentColor(Color("AccentColor"))
        
    }
}

struct SettingsView_Previews: PreviewProvider {
    static var previews: some View {
        SettingsView()
    }
}
