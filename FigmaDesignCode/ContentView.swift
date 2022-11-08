//
//  ContentView.swift
//  FigmaDesignCode
//
//  Created by Aram Hernandez on 2022-11-07.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        TabView{
            NavigationView{
                TaskListView()
            }
            .tabItem{
                Image("ic-task")
                    .renderingMode(.template)
            }
            
            InboxView()
                .tabItem{
                    Image("ic-calendar")
                        .renderingMode(.template)

                }
            
            RemaindersView()
                .tabItem{
                    Image("ic-timer")
                        .renderingMode(.template)

                }
            
            SettingsView()
                .tabItem{
                    Image("ic-settings")
                        .renderingMode(.template)

                }
        
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
