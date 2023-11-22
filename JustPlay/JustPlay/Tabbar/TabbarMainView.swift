//
//  TabbarMainView.swift
//  JustPlay
//
//  Created by Vijay Parmar on 07/11/23.
//

import SwiftUI

struct TabbarMainView: View {
    
   
    var body: some View {
        TabView {
            HomeView()
                .tabItem {
                    Label("Home", image: "img_home")
                }
            
            LoginView()
                .tabItem {
                    Label("Search", image: "img_search")
                }
            SavedView()
                .tabItem {
                    Label("Saved", image: "img_saved")
                }
            DownloadsView()
                .tabItem {
                    Label("Downloads", image: "img_download")
                }
            
        }
        .tint(.white)
        .onAppear() {
                UITabBar.appearance().barTintColor = .appDarkBlue
            }
    }
}

#Preview {
    TabbarMainView()
}
